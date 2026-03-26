<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index(Request $request)
    {
        if (! $request->user()->isSuperAdmin()) {
            return response()->json(['message' => 'Forbidden'], 403);
        }

        return response()->json(
            User::query()
                ->orderBy('id', 'desc')
                ->get(['id', 'name', 'email', 'role', 'is_active', 'created_at', 'updated_at'])
        );
    }

    public function store(Request $request)
    {
        if (! $request->user()->isSuperAdmin()) {
            return response()->json(['message' => 'Forbidden'], 403);
        }

        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|string|min:6',
            'role' => 'required|in:super_admin,admin,cashier',
            'is_active' => 'nullable|boolean',
        ]);

        $user = User::create([
            'name' => $validated['name'],
            'email' => $validated['email'],
            // `password` field uses `hashed` cast in `User` model.
            'password' => $validated['password'],
            'role' => $validated['role'],
            'is_active' => $validated['is_active'] ?? true,
        ]);

        return response()->json($user->makeHidden(['password']), 201);
    }

    public function update(Request $request, User $user)
    {
        if (! $request->user()->isSuperAdmin()) {
            return response()->json(['message' => 'Forbidden'], 403);
        }

        $validated = $request->validate([
            'name' => 'sometimes|required|string|max:255',
            'email' => 'sometimes|required|email|unique:users,email,' . $user->id,
            'password' => 'nullable|string|min:6',
            'role' => 'sometimes|required|in:super_admin,admin,cashier',
            'is_active' => 'nullable|boolean',
        ]);

        if (array_key_exists('password', $validated) && ! empty($validated['password'])) {
            $user->password = $validated['password'];
        }

        foreach (['name', 'email', 'role', 'is_active'] as $key) {
            if (array_key_exists($key, $validated)) {
                $user->{$key} = $validated[$key];
            }
        }

        $user->save();

        return response()->json($user->makeHidden(['password']));
    }

    public function destroy(Request $request, User $user)
    {
        if (! $request->user()->isSuperAdmin()) {
            return response()->json(['message' => 'Forbidden'], 403);
        }

        // Keep it non-destructive: just deactivate.
        $user->update(['is_active' => false]);

        return response()->json(['message' => 'User deactivated']);
    }
}

