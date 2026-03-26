<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    public function run(): void
    {
        User::updateOrCreate(['email' => 'admin@motidukan.com'], [
            'name' => 'Super Admin',
            // `password` column uses `hashed` cast in `User` model, so store the plain password.
            'password' => 'Admin@1234',
            'role' => 'super_admin',
            'is_active' => true,
        ]);

        User::updateOrCreate(['email' => 'cashier@motidukan.com'], [
            'name' => 'Cashier Ali',
            'password' => 'Admin@1234',
            'role' => 'cashier',
            'is_active' => true,
        ]);
    }
}

