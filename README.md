# Moti Dukan POS - Backend

Laravel API backend for Moti Dukan POS.

## Project Structure

This workspace has:

- Backend: `moti-dukaan-laravel`
- Frontend: `../moti-dukaan-vuejs`

## Tech Stack

- Laravel + Sanctum (token auth)
- MySQL database
- Image storage via `public` disk

## Prerequisites

- PHP 8.2+
- Composer
- MySQL
- Node.js (for frontend project)

## Backend Setup (First Time)

From `moti-dukaan-laravel` directory:

```bash
composer install
cp .env.example .env
php artisan key:generate
```

Update `.env` (already configured in this project):

```env
APP_URL=http://localhost:8000
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=motidukan
DB_USERNAME=root
DB_PASSWORD=
SANCTUM_STATEFUL_DOMAINS=localhost:5173
SESSION_DOMAIN=localhost
```

Create DB and run migration/seed:

```bash
mysql -u root -e "CREATE DATABASE IF NOT EXISTS motidukan CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"
php artisan migrate --force
php artisan db:seed --force
php artisan storage:link
php artisan config:clear
php artisan cache:clear
php artisan route:clear
```

Run backend server:

```bash
php artisan serve --host=127.0.0.1 --port=8000
```

Backend API base URL:

- `http://127.0.0.1:8000/api`

## Frontend Run (for full app use)

In second terminal:

```bash
cd ../moti-dukaan-vuejs
npm install
npm run dev -- --host 127.0.0.1 --port 5173
```

Frontend URL:

- `http://127.0.0.1:5173`

## Example Accounts

Seeded demo users:

| Role | Email | Password |
|---|---|---|
| Super Admin | `admin@motidukan.com` | `Admin@1234` |
| Cashier | `cashier@motidukan.com` | `Admin@1234` |

## How to Use (Step-by-Step)

1. Open frontend `http://127.0.0.1:5173`
2. Login with super admin account
3. Setup master data:
   - Categories CRUD (`/categories`)
   - Products CRUD (`/products`)
4. Go to POS billing (`/pos`)
   - Select products
   - Enter quantity (unit-based modal)
   - Apply discount/payment
   - Complete sale and print receipt
5. Check:
   - Inventory (`/inventory`)
   - Sales history (`/sales`)
   - Dashboard (`/dashboard`)
   - Reports (`/reports`)
   - Users CRUD (`/users`, super admin only)

## API Notes

- Login endpoint: `POST /api/auth/login`
- Protected endpoints require `Authorization: Bearer <token>`
- Main modules:
  - Categories CRUD
  - Products CRUD + stock adjustment
  - Sales create/list/show/cancel
  - Dashboard and Reports
  - Users CRUD (super-admin restricted)
# moti-dukan-laravel
