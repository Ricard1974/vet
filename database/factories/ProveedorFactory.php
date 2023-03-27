<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Proveedor>
 */
class ProveedorFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => $this->faker->company(),
            'cname' => $this->faker->firstNameMale(),
            'image' => '',
            'phone' => $this->faker->phoneNumber(),
            'phone2' => $this->faker->phoneNumber(),
            'contract' => '',
            'adress' => $this->faker->streetAddress(),
            'cif' => $this->faker->numerify('CIF-#####'),
            'nif' => $this->faker->numerify('NIF-#####'),
            'www' => $this->faker->url(),
            'mail' => $this->faker->safeEmail(),
            'notes' => $this->faker->text(),
        ];
    }
}
