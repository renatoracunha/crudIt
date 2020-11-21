<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;

class AuthController extends Controller
{


    public function __construct()
    {
        $this->middleware('auth:api', ['except' => ['login', 'register']]);
    } //end __construct()


    public function login(Request $request)
    {

        $validator = Validator::make(
            $request->all(),
            [
                'email'    => 'required|email',
                'password' => 'required|string|min:6',
            ]
        );

        if ($validator->fails())
            echo json_encode(false, JSON_UNESCAPED_UNICODE);
        else {

            $token_validity = (24 * 60);

            $this->guard()->factory()->setTTL($token_validity);

            if (!$token = $this->guard()->attempt($validator->validated()))
                echo json_encode(false, JSON_UNESCAPED_UNICODE);
            else
                echo json_encode($this->respondWithToken($token), JSON_UNESCAPED_UNICODE);
        }
    } //end login()


    public function register(Request $request)
    {
        $validator = Validator::make(
            $request->all(),
            [
                'name'     => 'required|string|between:2,100',
                'email'    => 'required|email|unique:users',
                'password' => 'required|confirmed|min:6',
            ]
        );

        if ($validator->fails()) {
            return response()->json(
                [$validator->errors()],
                422
            );
        }

        $user = new User;
        $user->name = $request->name;
        $user->email = $request->email;
        $user->state = $request->uf;
        $user->gender = $request->gender;
        $user->password = bcrypt($request->password);
        if ($user->save()) {
            return redirect()->route('home');
        } else {
            echo "erro ao inserir pessoa";
        }
    } //end register()


    public function logout()
    {
        $this->guard()->logout();

        return response()->json(['message' => 'User logged out successfully']);
    } //end logout()


    public function profile()
    {
        return response()->json($this->guard()->user());
    } //end profile()

    public function usersTasks()
    {
        $users =  DB::select('select name,id from users');
        $data=[];
        foreach ($users as $key => $user) {
             $tasks =  DB::select('select title,completed from todos where created_by = :id', ['id' => $user->id]);
           foreach ($tasks as $key2 => $task) {
                $data[$user->name][$key2]['task'] = $task->title;
                $data[$user->name][$key2]['status'] = $task->completed;
           }
        }
        return response()->json($data);
    } //end profile()


    public function refresh()
    {
        return $this->respondWithToken($this->guard()->refresh());
    } //end refresh()


    protected function respondWithToken($token)
    {
        return response()->json(
            [
                'token'          => $token,
                'token_type'     => 'bearer',
                'token_validity' => ($this->guard()->factory()->getTTL() * 60),
            ]
        );
    } //end respondWithToken()


    protected function guard()
    {
        return Auth::guard();
    } //end guard()


}//end class
