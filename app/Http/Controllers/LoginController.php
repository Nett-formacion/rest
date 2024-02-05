<?php

namespace App\Http\Controllers;

use App\Http\Resources\UserResource;
use Illuminate\Http\Request;
use App\Http\Requests\RegisterUserRequest;
use App\Models\User;
use App\Http\Requests\LoginUserRequest;
use Illuminate\Support\Facades\Hash;

class LoginController extends Controller
{
    //
    public function login(LoginUserRequest $request){

        $data= $request->input("data.attributes");
        $email = $data['email'];
        $user = User::whereEmail( $email)->first();
        info ("LoginController @ login buscano -$user-");
        if (!$user) {
            return response()->json([
                "errors" => [
                    "status" => '422',
                    "title" => "Resource not found",
                    "detail" => "No se ha encontrado el usuario"
                ]
            ], 422);
        }
         $password = $data['password'];

            if (!Hash::check($password, $user->password)){
                return response()->json([
                    "errors" => [
                        "status" => '422',
                        "title" => "Resource not found",
                        "detail" => "Datos incorrecta"
                    ]
                ], 422);
        }
            $device_name= $data["device_name"];

        $token = $user->createToken($device_name,["*"])->plainTextToken;
        return (new UserResource($user))->additional([
            "meta"=>["token"=>$token]
        ]);

    }
    public function register(RegisterUserRequest $request){
        $user = new User ($request->input("data.attributes"));+

        $user->save();
        $device_name =  ($request->input("data.attributes.device_name"));
        $token = $user->createToken($device_name,["*"])->plainTextToken;
        info("LoginControler@register contoken -$token-");

        $retorno = ((new UserResource($user))
            ->additional(["meta" => ["token" => $token]])
            ->response()->setStatusCode(201));


        return $retorno;





    }
}
