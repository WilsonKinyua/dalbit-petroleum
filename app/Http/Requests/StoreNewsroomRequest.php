<?php

namespace App\Http\Requests;

use App\Models\Newsroom;
use Gate;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Response;

class StoreNewsroomRequest extends FormRequest
{
    public function authorize()
    {
        return Gate::allows('newsroom_create');
    }

    public function rules()
    {
        return [
            'title' => [
                'string',
                'required',
            ],
            'location' => [
                'string',
                'nullable',
            ],
            'image' => [
                'required',
            ],
            'description' => [
                'required',
            ],
        ];
    }
}
