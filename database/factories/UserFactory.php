<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class UserFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->name(),    //folosim interfata faker
            'email' => $this->faker->unique()->safeEmail(),
            'email_verified_at' => now(),
            'password' => bcrypt('password'), // password la toti
            'remember_token' => Str::random(10),
            'created_at'=>$this->faker->dateTimeBetween('-2 years', 'now') ->getTimestamp(),
            'role'=>$this->faker->randomElement(['student','profesor']),
            'phone'=>$this->faker->e164PhoneNumber,
            'address'=>$this->faker->city . ' ' . $this->faker->streetAddress
        ];
    }

    /**
     * Indicate that the model's email address should be unverified.
     *
     * @return \Illuminate\Database\Eloquent\Factories\Factory
     */
    public function unverified()
    {
        return $this->state(function (array $attributes) {
            return [
                'email_verified_at' => null,
            ];
        });
    }
}
