<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class ProductController extends Controller
{
    public function index(Request $request)
    {
        $q = Product::with('category')
            ->when($request->category_id, fn ($q, $id) => $q->where('category_id', $id))
            ->when($request->search, fn ($q, $s) => $q->where('name', 'like', "%$s%")
                ->orWhere('sku', 'like', "%$s%"))
            ->when($request->unit_type, fn ($q, $u) => $q->where('unit_type', $u))
            ->when($request->featured, fn ($q) => $q->where('is_featured', true))
            ->where('is_active', true)
            ->orderBy('display_order')
            ->orderBy('name');

        $data = $request->paginate ? $q->paginate($request->per_page ?? 20) : $q->get();

        return response()->json($data);
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'category_id' => 'required|exists:categories,id',
            'name' => 'required|string|max:200',
            'sku' => 'nullable|unique:products,sku|max:100',
            'description' => 'nullable|string',
            'unit_type' => 'required|in:weight,length,piece,dozen',
            'unit_label' => 'required|string|max:30',
            'price_per_unit' => 'required|numeric|min:0',
            'cost_price' => 'nullable|numeric|min:0',
            'stock_quantity' => 'required|numeric|min:0',
            'low_stock_alert' => 'nullable|numeric|min:0',
            'stock_unit' => 'required|string|max:30',
            'is_featured' => 'nullable|boolean',
            'image' => 'nullable|image|max:3072',
            'images' => 'nullable|array',
        ]);

        if ($request->hasFile('image')) {
            $validated['image'] = $request->file('image')->store('products', 'public');
        }

        $product = Product::create($validated);

        return response()->json($product->load('category'), 201);
    }

    public function show(Product $product)
    {
        return response()->json($product->load(['category', 'stockMovements' => fn ($q) => $q->latest()->take(20)]));
    }

    public function update(Request $request, Product $product)
    {
        $validated = $request->validate([
            'category_id' => 'sometimes|exists:categories,id',
            'name' => 'sometimes|string|max:200',
            'sku' => 'nullable|unique:products,sku,' . $product->id . '|max:100',
            'description' => 'nullable|string',
            'unit_type' => 'sometimes|in:weight,length,piece,dozen',
            'unit_label' => 'sometimes|string|max:30',
            'price_per_unit' => 'sometimes|numeric|min:0',
            'cost_price' => 'nullable|numeric|min:0',
            'stock_quantity' => 'sometimes|numeric|min:0',
            'low_stock_alert' => 'nullable|numeric|min:0',
            'is_active' => 'nullable|boolean',
            'is_featured' => 'nullable|boolean',
            'image' => 'nullable|image|max:3072',
            'images' => 'nullable|array',
        ]);

        if ($request->hasFile('image')) {
            if ($product->image) {
                Storage::disk('public')->delete($product->image);
            }
            $validated['image'] = $request->file('image')->store('products', 'public');
        }

        $product->update($validated);

        return response()->json($product->load('category'));
    }

    public function destroy(Product $product)
    {
        $product->update(['is_active' => false]);
        return response()->json(['message' => 'Product deactivated']);
    }

    public function adjustStock(Request $request, Product $product)
    {
        $request->validate([
            'quantity' => 'required|numeric',
            'type' => 'required|in:purchase,adjustment,return',
            'notes' => 'nullable|string',
        ]);

        $qty = (float) $request->quantity;

        if ($qty === 0.0) {
            return response()->json(['stock_quantity' => $product->stock_quantity]);
        }

        if ($qty > 0) {
            $product->addStock($qty, $request->type, $request->notes ?? '', $request->user()->id, null);
        } else {
            $abs = abs($qty);
            if ($product->stock_quantity < $abs) {
                return response()->json(['message' => "Insufficient stock for {$product->name}"], 422);
            }
            $product->deductStock(
                $abs,
                null,
                $request->user()->id,
                $request->type,
                $request->notes ?? ''
            );
        }

        return response()->json(['stock_quantity' => $product->fresh()->stock_quantity]);
    }
}

