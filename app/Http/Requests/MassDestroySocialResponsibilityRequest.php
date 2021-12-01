<?php

namespace App\Http\Requests;

use App\Models\SocialResponsibility;
use Gate;
use Illuminate\Foundation\Http\FormRequest;
use Symfony\Component\HttpFoundation\Response;

class MassDestroySocialResponsibilityRequest extends FormRequest
{
    public function authorize()
    {
        abort_if(Gate::denies('social_responsibility_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return true;
    }

    public function rules()
    {
        return [
            'ids'   => 'required|array',
            'ids.*' => 'exists:social_responsibilities,id',
        ];
    }
}
