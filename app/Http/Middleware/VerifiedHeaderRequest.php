<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class VerifiedHeaderRequest
{
    /**
     * Handle an incoming request.
     *
     * @param \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response) $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        if ($request->header("accept") !== "application/vnd.api+json") {
            return response()->json([
                "error" => [
                    "status" => "406", //Cada código
                    "title" => "Not Acceptable", //En función del código
                    "details" => "El contenido no es de tipo json "
                ]
            ],406);
        }
        if ($request->isMethod("POST")|| $request->isMethod('PATH')){
            if ($request->header("content-type") !== "application/vnd.api+json") {
                return response()->json([
                    "error" => [
                        "status" => "415", //Cada código
                        "title" => "Unsupportable Media Type", //En función del código

                    ]
                ],415);
            }
        }
        return $next($request);
    }
}
