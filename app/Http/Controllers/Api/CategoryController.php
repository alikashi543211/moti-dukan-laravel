<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class CategoryController extends Controller
{
    public function index()
    {
        $cats = Category::withCount('products')
            ->orderBy('display_order')
            ->get()
            ->map(function ($c) {
                $arr = $c->toArray();
                $arr['image_url'] = $c->image_url;
                return $arr;
            });

        return response()->json($cats);
    }

    public function show(Category $category)
    {
        return response()->json($category);
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:100',
            'description' => 'nullable|string',
            'color' => 'nullable|string|max:20',
            'image' => 'nullable|image|max:2048',
            'display_order' => 'nullable|integer',
        ]);

        if ($request->hasFile('image')) {
            $validated['image'] = $request->file('image')->store('categories', 'public');
        }

        $validated['slug'] = Str::slug($validated['name']);

        return response()->json(Category::create($validated), 201);
    }

    public function update(Request $request, Category $category)
    {
        $validated = $request->validate([
            'name' => 'sometimes|string|max:100',
            'description' => 'nullable|string',
            'color' => 'nullable|string|max:20',
            'image' => 'nullable|image|max:2048',
            'is_active' => 'nullable|boolean',
            'display_order' => 'nullable|integer',
        ]);

        if (isset($validated['name'])) {
            $validated['slug'] = Str::slug($validated['name']);
        }

        if ($request->hasFile('image')) {
            if ($category->image) {
                Storage::disk('public')->delete($category->image);
            }
            $validated['image'] = $request->file('image')->store('categories', 'public');
        }

        $category->update($validated);

        return response()->json($category);
    }

    public function destroy(Category $category)
    {
        if ($category->products()->count()) {
            return response()->json(['message' => 'Category has products'], 422);
        }

        $category->delete();

        return response()->json(['message' => 'Deleted']);
    }
}

