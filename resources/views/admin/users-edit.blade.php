@extends('admin.template')

@section('title', 'Editare utilizator ' . $user->name)

@section('content')

<ol class="breadcrumb mb-4">
    <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">Control Panel</a></li>
    <li class="breadcrumb-item"><a href="{{ route('users') }}">Users</a></li>
    <li class="breadcrumb-item active">Edit user {{ $user->name }}</li>
</ol>

<div class="card p-4">

<form action="{{ route('users.update', $user->id) }}" method="POST" enctype="multipart/form-data">
    @csrf
    @method('put')
    <div class="form-row">

        <div class="form-group col-md-3">
            <label for="name">Nume</label>
            <input name="name" type="text" class="form-control @error('name') is-invalid @enderror" id="name" placeholder="Nume utilizator" value="{{ $user->name }}">
            @error('name') <span class="text-danger small">{{ $message }}</span>@enderror
        </div>

        <div class="form-group col-md-3">
            <label for="email">Email</label>
            <input name="email" type="email" class="form-control @error('email') is-invalid @enderror" id="email" placeholder="Email utilizator" value="{{ $user->email }}">
            @error('email') <span class="text-danger small">{{ $message }}</span>@enderror
        </div>

        <div class="form-group col-md-2">
            <label for="phone">Telefon</label>
            <input name="phone" type="text" class="form-control @error('phone') is-invalid @enderror" id="phone" placeholder="Telefon utilizator" value="{{ $user->phone }}">
            @error('phone') <span class="text-danger small">{{ $message }}</span>@enderror
        </div>

        <div class="form-group col-md-4">
            <label for="address">Adresa</label>
            <input name="address" type="text" class="form-control @error('address') is-invalid @enderror" id="address" placeholder="Adresa utilizator" value="{{ $user->address }}">
            @error('address') <span class="text-danger small">{{ $message }}</span>@enderror
        </div>

       

    </div>

    <div class="form-row align-items-end" >
    
        <div class="form-group col-md-6">

        <div id="img-preview">
            <img id="photo-preview" src="{{ '/images/users/' . $user->photo}}" alt="" style="max-width: 200px; max-height:200px; display:inline-block;">
        </div>
            <div class="custom-file">
                <input type="file" accept="image/" class="custom-file-input" name="photo" id="photoFile">
                <label class="custom-file-label" for="customFile">Selectati imaginea</label>
            </div>
            @error('photo') <span class="text-danger small">{{ $message }}</span>@enderror
        </div>
        <div class="form-group col-md-3">
            <label for="role">Rol</label>
            <select id="role" name="role" class="custom-select @error('role') is-invalid @enderror">
                <option value="admin" {{ $user->role=="admin" ? 'selected' : '' }}>Admin</option>
                <option value="profesor" {{ $user->role=="profesor" ? 'selected' : '' }}>Profesor</option>
                <option value="student" {{ $user->role=="student" ? 'selected' : '' }}>Student</option>
            </select>
            @error('role') <span class="text-danger small">{{ $message }}</span>@enderror
        </div>
    </div>

    
    <button type="submit" class="btn btn-primary float-right ml-4">Update user</button>
    <a href="{{ route('users') }}" type="submit" class="btn btn-secondary float-right">Anulare</a>
    
</form>
</div >


@endsection

@section('customJs')
<script src="https://cdn.jsdelivr.net/npm/bs-custom-file-input/dist/bs-custom-file-input.min.js"> </script>
<script >
    $(document).ready(function () {
        bsCustomFileInput.init()
    })
</script>

<script>
const chooseFile = document.getElementById("photoFile");
const imgPreview = document.getElementById("img-preview");

chooseFile.addEventListener("change", function () {
  getImgData();
});

function getImgData() {
  const files = chooseFile.files[0];
  if (files) {
    const fileReader = new FileReader();
    fileReader.readAsDataURL(files);
    fileReader.addEventListener("load", function () {
      imgPreview.style.display = "block";
      imgPreview.innerHTML = '<img src="' + this.result + '" style="max-height: 200px; max-width: 200px;"/>';
    });    
  }
}
</script>

@endsection