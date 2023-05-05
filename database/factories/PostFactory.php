<?php

namespace Database\Factories;

use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Post>
 */
class PostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'category_id'=>'1',
            'title'=> $this->faker->text(20),
            'slug'  => function ($attr) {
                return Str::slug($attr['title']);
            },
            'content'=> $this->faker->realText($maxNbChars = 200, $indexSize = 2),
            'is_published'=> $this->faker->boolean()
        ];
    }
}
