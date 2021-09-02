<?php

namespace Database\Factories;

use App\Models\Category;
use App\Models\Course;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class CourseFactory extends Factory
{

    protected $model = Course::class;

 
    public function definition()
    {
        $name = $this->faker->firstName();
        return [
            'name' => $name,
            'slug' => Str::slug($name, '-'),
            'image' => $this->faker->imageUrl(1280, 720),
            'description' => $this->faker->text(400),

            'user_id' => User::all()->random()->id,
            'category_id' => Category::all()->random()->id,

        ];
    }
}
