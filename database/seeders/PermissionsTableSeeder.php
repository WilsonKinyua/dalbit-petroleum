<?php

namespace Database\Seeders;

use App\Models\Permission;
use Illuminate\Database\Seeder;

class PermissionsTableSeeder extends Seeder
{
    public function run()
    {
        $permissions = [
            [
                'id'    => 1,
                'title' => 'user_management_access',
            ],
            [
                'id'    => 2,
                'title' => 'permission_create',
            ],
            [
                'id'    => 3,
                'title' => 'permission_edit',
            ],
            [
                'id'    => 4,
                'title' => 'permission_show',
            ],
            [
                'id'    => 5,
                'title' => 'permission_delete',
            ],
            [
                'id'    => 6,
                'title' => 'permission_access',
            ],
            [
                'id'    => 7,
                'title' => 'role_create',
            ],
            [
                'id'    => 8,
                'title' => 'role_edit',
            ],
            [
                'id'    => 9,
                'title' => 'role_show',
            ],
            [
                'id'    => 10,
                'title' => 'role_delete',
            ],
            [
                'id'    => 11,
                'title' => 'role_access',
            ],
            [
                'id'    => 12,
                'title' => 'user_create',
            ],
            [
                'id'    => 13,
                'title' => 'user_edit',
            ],
            [
                'id'    => 14,
                'title' => 'user_show',
            ],
            [
                'id'    => 15,
                'title' => 'user_delete',
            ],
            [
                'id'    => 16,
                'title' => 'user_access',
            ],
            [
                'id'    => 17,
                'title' => 'slider_create',
            ],
            [
                'id'    => 18,
                'title' => 'slider_edit',
            ],
            [
                'id'    => 19,
                'title' => 'slider_show',
            ],
            [
                'id'    => 20,
                'title' => 'slider_delete',
            ],
            [
                'id'    => 21,
                'title' => 'slider_access',
            ],
            [
                'id'    => 22,
                'title' => 'newsroom_create',
            ],
            [
                'id'    => 23,
                'title' => 'newsroom_edit',
            ],
            [
                'id'    => 24,
                'title' => 'newsroom_show',
            ],
            [
                'id'    => 25,
                'title' => 'newsroom_delete',
            ],
            [
                'id'    => 26,
                'title' => 'newsroom_access',
            ],
            [
                'id'    => 27,
                'title' => 'contact_show',
            ],
            [
                'id'    => 28,
                'title' => 'contact_delete',
            ],
            [
                'id'    => 29,
                'title' => 'contact_access',
            ],
            [
                'id'    => 30,
                'title' => 'resource_create',
            ],
            [
                'id'    => 31,
                'title' => 'resource_edit',
            ],
            [
                'id'    => 32,
                'title' => 'resource_delete',
            ],
            [
                'id'    => 33,
                'title' => 'resource_access',
            ],
            [
                'id'    => 34,
                'title' => 'country_create',
            ],
            [
                'id'    => 35,
                'title' => 'country_edit',
            ],
            [
                'id'    => 36,
                'title' => 'country_show',
            ],
            [
                'id'    => 37,
                'title' => 'country_delete',
            ],
            [
                'id'    => 38,
                'title' => 'country_access',
            ],
            [
                'id'    => 39,
                'title' => 'divisions_management_access',
            ],
            [
                'id'    => 40,
                'title' => 'category_create',
            ],
            [
                'id'    => 41,
                'title' => 'category_delete',
            ],
            [
                'id'    => 42,
                'title' => 'category_access',
            ],
            [
                'id'    => 43,
                'title' => 'division_create',
            ],
            [
                'id'    => 44,
                'title' => 'division_edit',
            ],
            [
                'id'    => 45,
                'title' => 'division_show',
            ],
            [
                'id'    => 46,
                'title' => 'division_delete',
            ],
            [
                'id'    => 47,
                'title' => 'division_access',
            ],
            [
                'id'    => 48,
                'title' => 'contact_information_create',
            ],
            [
                'id'    => 49,
                'title' => 'contact_information_edit',
            ],
            [
                'id'    => 50,
                'title' => 'contact_information_show',
            ],
            [
                'id'    => 51,
                'title' => 'contact_information_delete',
            ],
            [
                'id'    => 52,
                'title' => 'contact_information_access',
            ],
            [
                'id'    => 53,
                'title' => 'search_delete',
            ],
            [
                'id'    => 54,
                'title' => 'search_access',
            ],
            [
                'id'    => 55,
                'title' => 'social_responsibility_create',
            ],
            [
                'id'    => 56,
                'title' => 'social_responsibility_edit',
            ],
            [
                'id'    => 57,
                'title' => 'social_responsibility_show',
            ],
            [
                'id'    => 58,
                'title' => 'social_responsibility_delete',
            ],
            [
                'id'    => 59,
                'title' => 'social_responsibility_access',
            ],
            [
                'id'    => 60,
                'title' => 'profile_password_edit',
            ],
        ];

        Permission::insert($permissions);
    }
}
