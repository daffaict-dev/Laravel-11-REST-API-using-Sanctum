<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\RegisterController;
use App\Http\Controllers\API\ProductController;
use App\Http\Controllers\API\BaseController;

Route::controller(RegisterController::class)->group(function () {
    Route::post('register', 'register');
    Route::post('login', 'login');
});

Route::get('/login', function () {
    return response()->json([
        'message' => 'Please login via API /api/login'
    ], 401);
})->name('login');

Route::middleware('auth:sanctum')->group(function () {
    Route::get('/user', function (Request $request) {
        return (new BaseController)->sendResponse(
            $request->user(),
            'User retrieved successfully.'
        );
    });

    Route::post('logout', [RegisterController::class, 'logout']);
    Route::resource('products', ProductController::class);
});
