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
            'article_sentence' => [
                'string',
                'nullable',
            ],
            'photo_caption' => [
                'string',
                'nullable',
            ],
            'seo_keywords' => [
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
