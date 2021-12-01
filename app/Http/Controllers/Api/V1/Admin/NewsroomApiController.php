<?php

namespace App\Http\Controllers\Api\V1\Admin;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Traits\MediaUploadingTrait;
use App\Http\Requests\StoreNewsroomRequest;
use App\Http\Requests\UpdateNewsroomRequest;
use App\Http\Resources\Admin\NewsroomResource;
use App\Models\Newsroom;
use Gate;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class NewsroomApiController extends Controller
{
    use MediaUploadingTrait;

    public function index()
    {
        abort_if(Gate::denies('newsroom_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return new NewsroomResource(Newsroom::all());
    }

    public function store(StoreNewsroomRequest $request)
    {
        $newsroom = Newsroom::create($request->all());

        if ($request->input('image', false)) {
            $newsroom->addMedia(storage_path('tmp/uploads/' . basename($request->input('image'))))->toMediaCollection('image');
        }

        return (new NewsroomResource($newsroom))
            ->response()
            ->setStatusCode(Response::HTTP_CREATED);
    }

    public function show(Newsroom $newsroom)
    {
        abort_if(Gate::denies('newsroom_show'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return new NewsroomResource($newsroom);
    }

    public function update(UpdateNewsroomRequest $request, Newsroom $newsroom)
    {
        $newsroom->update($request->all());

        if ($request->input('image', false)) {
            if (!$newsroom->image || $request->input('image') !== $newsroom->image->file_name) {
                if ($newsroom->image) {
                    $newsroom->image->delete();
                }
                $newsroom->addMedia(storage_path('tmp/uploads/' . basename($request->input('image'))))->toMediaCollection('image');
            }
        } elseif ($newsroom->image) {
            $newsroom->image->delete();
        }

        return (new NewsroomResource($newsroom))
            ->response()
            ->setStatusCode(Response::HTTP_ACCEPTED);
    }

    public function destroy(Newsroom $newsroom)
    {
        abort_if(Gate::denies('newsroom_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $newsroom->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }
}
