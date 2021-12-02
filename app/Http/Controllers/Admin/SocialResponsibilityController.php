<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Traits\MediaUploadingTrait;
use App\Http\Requests\MassDestroySocialResponsibilityRequest;
use App\Http\Requests\StoreSocialResponsibilityRequest;
use App\Http\Requests\UpdateSocialResponsibilityRequest;
use App\Models\SocialResponsibility;
use Gate;
use Illuminate\Http\Request;
use Spatie\MediaLibrary\MediaCollections\Models\Media;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Str;

class SocialResponsibilityController extends Controller
{
    use MediaUploadingTrait;

    public function index()
    {
        abort_if(Gate::denies('social_responsibility_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $socialResponsibilities = SocialResponsibility::with(['media'])->get();

        return view('admin.socialResponsibilities.index', compact('socialResponsibilities'));
    }

    public function create()
    {
        abort_if(Gate::denies('social_responsibility_create'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return view('admin.socialResponsibilities.create');
    }

    public function store(StoreSocialResponsibilityRequest $request)
    {
        $socialResponsibility = SocialResponsibility::create($request->all());

        // create a slug for the social responsibility
        $socialResponsibility->slug = Str::of($socialResponsibility->title)->slug('-');
        // check if the slug exists
        $checkSlug = SocialResponsibility::where('slug', $socialResponsibility->slug)->first();
        // if the slug exists, add id to slug
        if ($checkSlug) {
            $socialResponsibility->slug = $socialResponsibility->slug . '-' . $socialResponsibility->id;
        }
        // save the slug
        $socialResponsibility->save();

        if ($request->input('image', false)) {
            $socialResponsibility->addMedia(storage_path('tmp/uploads/' . basename($request->input('image'))))->toMediaCollection('image');
        }

        if ($media = $request->input('ck-media', false)) {
            Media::whereIn('id', $media)->update(['model_id' => $socialResponsibility->id]);
        }

        return redirect()->route('admin.social-responsibilities.index');
    }

    public function edit(SocialResponsibility $socialResponsibility)
    {
        abort_if(Gate::denies('social_responsibility_edit'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return view('admin.socialResponsibilities.edit', compact('socialResponsibility'));
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

        return redirect()->route('admin.social-responsibilities.index');
    }

    public function show(SocialResponsibility $socialResponsibility)
    {
        abort_if(Gate::denies('social_responsibility_show'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return view('admin.socialResponsibilities.show', compact('socialResponsibility'));
    }

    public function destroy(SocialResponsibility $socialResponsibility)
    {
        abort_if(Gate::denies('social_responsibility_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $socialResponsibility->delete();

        return back();
    }

    public function massDestroy(MassDestroySocialResponsibilityRequest $request)
    {
        SocialResponsibility::whereIn('id', request('ids'))->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }

    public function storeCKEditorImages(Request $request)
    {
        abort_if(Gate::denies('social_responsibility_create') && Gate::denies('social_responsibility_edit'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $model         = new SocialResponsibility();
        $model->id     = $request->input('crud_id', 0);
        $model->exists = true;
        $media         = $model->addMediaFromRequest('upload')->toMediaCollection('ck-media');

        return response()->json(['id' => $media->id, 'url' => $media->getUrl()], Response::HTTP_CREATED);
    }
}
