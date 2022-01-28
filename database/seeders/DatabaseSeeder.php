<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        User::create([    //creare cont administrator
            'name'=>'Administrator',
            'email'=>'admin@gmail.com',
            'password'=>bcrypt('password'),
            'phone'=>'+4089 542 327',
            'address'=>'Romania, str Uranus nr 4 bl d45',
            'role'=>'admin'

        ]);

        User::factory(100)->create(); //creare  100 de utilizatori
    }
}
