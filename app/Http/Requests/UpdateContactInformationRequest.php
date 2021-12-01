<?php

namespace App\Http\Requests;

use App\Models\ContactInformation;
use Gate;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Response;

class UpdateContactInformationRequest extends FormRequest
{
    public function authorize()
    {
        return Gate::allows('contact_information_edit');
    }

    public function rules()
    {
        return [
            'division_id' => [
                'required',
                'integer',
            ],
            'country_id' => [
                'required',
                'integer',
            ],
            'location' => [
                'required',
            ],
        ];
    }
}
