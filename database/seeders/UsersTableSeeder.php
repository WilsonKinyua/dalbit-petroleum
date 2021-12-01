<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    public function run()
    {
        $users = [
            [
                'id'             => 1,
                'name'           => 'John Doe',
                'email'          => 'admin@admin.com',
                'password'       => bcrypt('GAF+;JcTra"69qX)'),
                'remember_token' => null,
            ],
        ];

        User::insert($users);
    }
}
