<?php

namespace App\Http\Controllers\Api\V1\Admin;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Traits\MediaUploadingTrait;
use App\Http\Requests\StoreSocialResponsibilityRequest;
use App\Http\Requests\UpdateSocialResponsibilityRequest;
use App\Http\Resources\Admin\SocialResponsibilityResource;
use App\Models\SocialResponsibility;
use Gate;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class SocialResponsibilityApiController extends Controller
{
    use MediaUploadingTrait;

    public function index()
    {
        abort_if(Gate::denies('social_responsibility_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return new SocialResponsibilityResource(SocialResponsibility::all());
    }

    public function store(StoreSocialResponsibilityRequest $request)
    {
        $socialResponsibility = SocialResponsibility::create($request->all());

        if ($request->input('image', false)) {
            $socialResponsibility->addMedia(storage_path('tmp/uploads/' . basename($request->input('image'))))->toMediaCollection('image');
        }

        return (new SocialResponsibilityResource($socialResponsibility))
            ->response()
            ->setStatusCode(Response::HTTP_CREATED);
    }

    public function show(SocialResponsibility $socialResponsibility)
    {
        abort_if(Gate::denies('social_responsibility_show'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return new SocialResponsibilityResource($socialResponsibility);
    }

    public function update(UpdateSocialResponsibilityRequest $request, SocialResponsibility $socialResponsibility)
    {
        $socialResponsibility->update($request->all());

        if ($request->input('image', false)) {
            if (!$socialResponsibility->image || $request->input('image') !== $socialResponsibility->image->file_name) {
                if ($socialResponsibility->image) {
                    $socialResponsibility->image->delete();
                }
                $socialResponsibility->addMedia(storage_path('tmp/uploads/' . basename($request->input('image'))))->toMediaCollection('image');
            }
        } elseif ($socialResponsibility->image) {
            $socialResponsibility->image->delete();
        }

        return (new SocialResponsibilityResource($socialResponsibility))
            ->response()
            ->setStatusCode(Response::HTTP_ACCEPTED);
    }

    public function destroy(SocialResponsibility $socialResponsibility)
    {
        abort_if(Gate::denies('social_responsibility_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $socialResponsibility->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }
}
