<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\CreateUserRequest;
use App\Models\User;
use Illuminate\Support\Facades\File;

class UsersController extends Controller
{

    public function __construct()
    {
        $this->middleware('admin');
    }

    public function showUsers()
    {
        $users=User::all()->sortBy('name');
        return view('admin.users')->with('users', $users);
    }

    public function newUser()
    {
        return view('admin.users-new');
    }

    public function createUser(CreateUserRequest $request)
    {
        $user = new User;

        $user->name=$request->name;
        $user->email=$request->email;
        $user->phone=$request->phone;
        $user->address=$request->address;
        $user->role=$request->role;
        $user->password= bcrypt($request->password);

        if($request->hasFile('photo'))
        {
            $extension=$request->file('photo')->getClientOriginalExtension();   //accepta orice tip de poza .jpg .png etc...
            $photoName=str_replace(' ', '',$request->name) . '_' . time() . '.' . $extension;  //str_replace elimina blank-urile in denumirea pozei
            $request->file('photo')->move('images/users',$photoName);

            $user->photo=$photoName;  //adaugare poza in baza de date
        }

        $user->save();

        return redirect(route('users'));
    }

    function showEditForm($id)
    {
        $user=User::findOrFail($id);
        return view('admin.users-edit')->with('user', $user);
    }

    function updateUser(Request $request, $id)
    {
        $user= User::findOrFail($id);
        
        if($request->hasFile('photo'))
        {

            //verificam daca are poza in DB si o stergem
            if(!($user->photo == 'default.jpg'))
            {
                File::delete('images/users/' .$user->photo);
            }


            $extension=$request->file('photo')->getClientOriginalExtension();   //accepta orice tip de poza .jpg .png etc...
            $photoName=str_replace(' ', '',$request->name) . '_' . time() . '.' . $extension;  //str_replace elimina blank-urile in denumirea pozei
            $request->file('photo')->move('images/users',$photoName);

            $user->photo=$photoName;  //adaugare poza in baza de date
        }

        $user->name=$request->name;
        $user->email=$request->email;
        $user->phone=$request->phone;
        $user->address=$request->address;
        $user->role=$request->role;

        $user->save(); //salvam datele

        return redirect(route('users'));

    }

    function deleteUser(Request $request, $id)
    {

        
        $user = User::findOrFail($id);
        //daca stergem un admin, pagina ne redirectioneaza
        if($user->role == "admin"){
            return redirect(route('users'));
        }


        if(!($user->photo == 'default.jpg'))   //daca utilizatorul nu are alta poza inafara de default.jpg ii vom sterge poza
            {
                File::delete('images/users/' .$user->photo);
            }

            $user->delete();
            return redirect(route('users'));

    }

}
