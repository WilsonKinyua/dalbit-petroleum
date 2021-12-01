<?php

namespace App\Http\Requests;

use App\Models\SocialResponsibility;
use Gate;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Response;

class StoreSocialResponsibilityRequest extends FormRequest
{
    public function authorize()
    {
        return Gate::allows('social_responsibility_create');
    }

    public function rules()
    {
        return [
            'title' => [
                'string',
                'required',
            ],
            'description' => [
                'required',
            ],
        ];
    }
}
