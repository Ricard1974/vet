<?php

namespace Database\Factories;

use Database\Factories\OwnerFactory;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Patient>
 */
class PatientFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'date_of_birth' => $this->faker-> date('Y_m_d'),
            'name' => $this->faker->word(),
            'type' => $this->faker->randomElement(['Gato', 'Perro', 'Reptil']),
            'weight' => $this->faker->randomFloat(2,1,7),
            'chip' => $this->faker->randomNumber(9, true),
            'owner_id'=> $this->faker->randomDigit(1,5),
            
        ];
    }
}



