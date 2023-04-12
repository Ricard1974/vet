<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Post;
use App\Models\User;
use App\Models\Owner;
use App\Models\Patient;
use App\Models\Category;
use App\Models\Proveedor;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Spatie\Permission\Models\Role;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {


        $user = User::factory()->create([
            'name' => 'Admin',
            'email' => 'admin@admin.com',
        ]);
        $role = Role::create(['name' => 'Admin']);
        $user->assignRole($role);
        $user2 = User::factory()->create([
            'name' => 'Guest',
            'email' => 'guest@guest.com',
        ]);
        $role = Role::create(['name' => 'Guest']);
        $user2->assignRole($role);


        DB::table('categories')->insert([

            [
                'name' => 'categoria1',
                'slug'=>'categoria1'
            ],
            [
                'name' => 'categoria2',
                'slug' => 'categoria2'
            ],
        ]);

        Proveedor::factory(10)->create();
        Owner::factory(10)->create();
        Patient::factory(10)->create();
        Post::factory(5)->create();
        // \App\Models\User::factory(10)->create();       

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);


    }
}
