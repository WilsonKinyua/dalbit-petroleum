<?php

namespace App\Http\Requests;

use App\Models\SocialResponsibility;
use Gate;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Response;

class UpdateSocialResponsibilityRequest extends FormRequest
{
    public function authorize()
    {
        return Gate::allows('social_responsibility_edit');
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
