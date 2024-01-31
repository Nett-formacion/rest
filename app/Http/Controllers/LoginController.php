<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\UserRequest;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class LoginController extends Controller
{
    //
    public function login(UserRequest $request)
    {
        $date = $request->input("data.attributes");
        $email = $date['email'];
        $user = User::whereEmail($email)->first();
        if (!$user) {
            // Si no se encontró un usuario, lanzar una excepción de validación
            throw \Illuminate\Validation\ValidationException::withMessages([
                "email" => "Las credenciales proporcionadas no coinciden con nuestros registros."
            ]);
        }
        dump ($user);
        $password = $date['password'];
        // Verificar si la contraseña es correcta
        if (!Hash::check($password, $user->password)) {
            throw \Illuminate\Validation\ValidationException::withMessages([
                "password" => "Las credenciales proporcionadas no coinciden con nuestros registros."
            ]);
        }
        $device_token= $date['device_name'];
        $token = $user->createToken($device_token)->plainTextToken;
        return response()->json([
            "plain-text-token"=>$token
        ]);

    }
}
