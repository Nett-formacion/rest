<?php

namespace App\Http\Controllers;

use App\Http\Requests\AlumnoFormRequest;
use App\Http\Requests\StoreAlumnoRequest;
use App\Http\Resources\AlumnoCollection;
use App\Http\Resources\AlumnoResource;
use Illuminate\Http\Request;
use App\Models\Alumno;

class AlumnoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $alumnos = Alumno::all();

        return new AlumnoCollection($alumnos);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(AlumnoFormRequest $request)
    {
        $alumno = new Alumno($request->input("data.attributes"));
        $alumno->save();
        return new AlumnoResource($alumno);
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(int $alumno)
    {
        $resource = Alumno::find($alumno);
        if (!$resource) {
            return response()->json([
                'errors' => [
                    [
                        'status' => '404',
                        'title' => 'Resource Not Found',
                        'detail' => 'The requested resource does not exist or could not be found.'
                    ]
                ]
            ], 404);
        }
        return new AlumnoResource($resource);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(AlumnoFormRequest $request, int $id)
    {
        $alumno = Alumno::find($id);
        if (!$alumno) {
            return response()->json([
                'errors' => [
                    [
                        'status' => '404',
                        'title' => 'Resource Not Found',
                        'detail' => 'The requested resource does not exist or could not be found.'
                    ]
                ]
            ], 404);
        }
        $alumno->update($request->input("data.attributes"));

        return new AlumnoResource($alumno);

    }


    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Alumno $alumno)
    {
       $alumno->delete();
       return response()->json(null, 204);
    }
}
