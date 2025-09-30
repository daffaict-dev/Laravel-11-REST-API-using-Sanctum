<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\JsonResponse;

class RegisterController extends BaseController
{
    /**
     * Register api
     */
    public function register(Request $request): JsonResponse
    {
        $validator = Validator::make($request->all(), [
            'username' => 'required|unique:users,username',
            'password' => 'required|min:6',
        ]);

        if ($validator->fails()) {
            return $this->sendError('Validation Error.', $validator->errors());
        }

        $input = $request->all();
        $input['password'] = bcrypt($request->password);
        $user = User::create($input);

        // langsung login setelah register (optional)
        $token = $user->createToken('auth_token')->plainTextToken;

        return $this->sendResponse([
            'user' => $user,
        ], 'User register successfully.')
        ->cookie(
            'token',            // nama cookie
            $token,             // isi cookie
            60 * 24,            // expired 1 hari
            '/',                // path
            'localhost',               // domain
            true,               // secure (pakai HTTPS)
            true,               // httpOnly (tidak bisa diakses JS)
            false,              // raw
            'Strict'            // SameSite
        );
    }

    /**
     * Login api
     */
    public function login(Request $request): JsonResponse
    {
        $credentials = $request->only('username', 'password');

        if (!Auth::attempt($credentials)) {
            return $this->sendError('Unauthorized.', ['error' => 'Unauthorized'], 401);
        }

        $user = Auth::user();
        $token = $user->createToken('auth_token')->plainTextToken;

        return $this->sendResponse([
            'user' => $user,
        ], 'User login successfully.')
        ->cookie(
            'token',
            $token,
            60 * 24,
            '/',
            null,
            true,
            true,
            false,
            'Strict'
        );
    }

    /**
     * Logout api
     */
    public function logout(Request $request): JsonResponse
    {
        $user = $request->user();

        if ($user) {
            $user->currentAccessToken()->delete();

            return response()->json([
                'success' => true,
                'message' => 'Logout berhasil'
            ])->withCookie(cookie()->forget('token'));
        }

        return response()->json([
            'success' => false,
            'message' => 'Tidak ada user yang sedang login'
        ], 401);
    }
}
