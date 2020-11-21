<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Todo;
use Illuminate\Support\Facades\DB;

class MainController extends Controller
{
    // USERS
    public function registerPerson()
    {   //getting brazilian districts from IBGE's API
        $json = file_get_contents('https://servicodados.ibge.gov.br/api/v1/localidades/estados?orderBy=nome');
        $obj = json_decode($json);
        $states = [];
        foreach ($obj as $key => $value) {
            $states[$value->sigla] = $value->nome;
        }

        return view('site.user-register', ['states_data' => $states]);
    }

    // TASKS
    public function registerTask()
    {
        $obj =  DB::select('select id,name from users');

        $users_data = [];
        foreach ($obj as $key => $value) {
            $users_data[$value->id] = $value->name;
        }

        return view('site.tasks-register', ['user_data' => $users_data]);
    }
    public function insertTask(Request $request)
    {
        $tasks = new Todo;
        $tasks->title = $request->name;
        $tasks->created_by = $request->user_id;
        $tasks->body = $request->description;
        if ($tasks->save()) {
            return redirect()->route('home');
        } else {
            echo "erro ao inserir TAREFA";
        }
    }

    public function menu()
    {
        $data['users'] =  DB::select('select name from users');
        if (!empty($data['users']))
            return view('site.menu');
        else
            return redirect()->route('register');
    }
}
