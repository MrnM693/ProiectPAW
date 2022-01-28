@extends('admin.template')

@section('title', 'Manage Users')

@section('content')

<ol class="breadcrumb mb-4">
    <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">Control Panel</a></li>
    <li class="breadcrumb-item active">Users</li>
</ol>

<div class="card mb-4">
    <div class="card-header">
        <i class="fas fa-table me-1"></i>
        Users - {{$users->count()}}

        <a href="{{ route('users.new') }}" class="btn btn-success float-right">New User</a>
    </div>
    <div class="card-body">
        <table id="datatablesSimple">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Address/Phone</th>
                    <th class="text-center">Photo</th>
                    <th>Role</th>
                    <th>Action</th>

                </tr>
            </thead>
            <tbody>
                @foreach($users as $user)
                <tr>
                    <td>{{ $user->name }}<br>
                        {{ $user->created_at }}
                    </td>
                    <td>{{ $user->email }}</td>
                    <td>{{ $user->address }}<br>
                        {{ $user->phone }}
                    </td>
                    <!-- C:\xampp\htdocs\proiect\public\images\users\default.jpg
                    public\images\users\default.jpg -->

                    <td> <img class="user-avatar mx-auto" src="/images/users/{{ $user->photo }}"
                            alt="{{ $user->name }}">
                        </td>
                        <td>{{ $user->role }}</td>
                    <td>
                        <a href="{{ route('users.editForm', $user->id) }}" class="btn btn-success btn-circle btn-md" title='Editeaza datele utilizatorului'><i class="fas fa-2x fa-user-edit"></i>
                    </a>

                        <form id="form-delete-{{ $user->id }}" action="{{ route('users.delete', $user->id) }}" method="POST" style="display: inline-block;" >
                            @csrf
                            @method('delete')

                        </form>

                        <button class="btn btn-danger btn-circle btn-md" title='Sterge utilizatorul din baza de date'  onclick="
                        if(confirm('Confirmati stergerea utilizatorului {{ $user->name }} ?')){
                            document.getElementById('form-delete-{{ $user->id }}').submit();
                        }">
                            <i class="fas fa-2x fa-trash-alt" ></i>
                    </button>


                    </td>
                </tr>
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Address/Phone</th>
                    <th class="text-center">Photo</th>
                    <th>Role</th>
                    <th>Action</th>
                </tr>
            </tfoot>

        </table>
    </div>
</div>


@endsection