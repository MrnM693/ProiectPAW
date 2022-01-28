@extends('admin.template-forms')
@section('title', 'Register')

@section('content')
    <main>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-5">
                    <div class="auth card shadow-lg border-0 rounded-lg mt-5">
                        <div class="card-header">
                            <h3 class="text-center font-weight-light my-4">Register</h3>
                        </div>
                        <div class="card-body">
                            <form method="POST" action="{{ route('register') }}">
                                @csrf
                            <div class="form-floating mb-3">
                                    <input name="name" class="form-control" id="name" type="text" placeholder="Insert name" />
                                    <label for="name">Name</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input name="email" class="form-control" id="inputEmail" type="email" placeholder="name@example.com" />
                                    <label for="inputEmail">Email address</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input name="password" class="form-control" id="inputPassword" type="password" placeholder="Enter password" />
                                    <label for="inputPassword">Password</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input name="password_confirmation" class="form-control" id="password_confirmation" type="password" placeholder="Confirm password" />
                                    <label for="password_confirmation">Password Confirmation</label>
                                </div>
                                <div class="form-check mb-3">
                                    <input name="remember" class="form-check-input" id="inputRememberPassword" type="checkbox" value="" />
                                    <label class="form-check-label" for="inputRememberPassword">Remember Password</label>
                                </div>
                                <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                    <button type="submit" class="btn btn-primary w-100" href="index.html">Register</button>
                                </div>
                            </form>
                        </div>
                        <div class="card-footer text-center py-3">
                            <div class="small"><a href="{{ route ('login') }}" >Already have an account? Login!</a></div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
@endsection