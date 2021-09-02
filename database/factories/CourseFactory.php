<?php

namespace Database\Factories;

use App\Models\Category;
use App\Models\Course;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class CourseFactory extends Factory
{

    protected $model = Course::class;

 
    public function definition()
    {
        return [
            'name' => $this->faker->firstName(),
            'slug' => $this->faker->slug(),
            'image' => $this->faker->imageUrl(1280, 720),
            'description' => $this->faker->text(400),

            'user_id' => User::all()->random()->id,
            'category_id' => Category::all()->random()->id,

        ];
    }
}
