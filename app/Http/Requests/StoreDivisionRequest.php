<?php

namespace App\Http\Requests;

use App\Models\Division;
use Gate;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Response;

class StoreDivisionRequest extends FormRequest
{
    public function authorize()
    {
        return Gate::allows('division_create');
    }

    public function rules()
    {
        return [
            'division_type_id' => [
                'required',
                'integer',
            ],
            'country_id' => [
                'required',
                'integer',
            ],
            'country_image' => [
                'required',
            ],
            'country_description' => [
                'required',
            ],
        ];
    }
}
