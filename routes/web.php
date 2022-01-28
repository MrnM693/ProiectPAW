<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\UsersController;
use GuzzleHttp\Middleware;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('admin.control-panel'); /*Deschide noua pagina creata de noi in resources/views/admin */
})->middleware(['auth'])->name('dashboard');

// Rutele de administrare 
Route::prefix('admin')->middleware(['admin'])->group( function() {
    Route::get('/users', [UsersController::class, 'showUsers'])->name('users');
    Route::get('/users-new', [UsersController::class, 'newUser'])->name('users.new');
    Route::post('/users-new', [UsersController::class, 'createUser'])->name('users.create');  //ruta afisare utilizator nou(creat)
    
    //editare users
    Route::get('/user-edit/{id}',[UsersController::class, 'showEditForm'])->name('users.editForm'); //ruta editare
    Route::put('/user-edit/{id}',[UsersController::class, 'updateUser'])->name('users.update'); //ruta postare editare

    Route::delete('/user-delete/{id}', [UsersController::class, 'deleteUser'])->name('users.delete');
    
});
// Rutele de administrare

require __DIR__ . '/auth.php';
