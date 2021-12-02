<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Traits\MediaUploadingTrait;
use App\Http\Requests\MassDestroyNewsroomRequest;
use App\Http\Requests\StoreNewsroomRequest;
use App\Http\Requests\UpdateNewsroomRequest;
use App\Models\Newsroom;
use Gate;
use Illuminate\Http\Request;
use Spatie\MediaLibrary\MediaCollections\Models\Media;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Str;

class NewsroomController extends Controller
{
    use MediaUploadingTrait;

    public function index()
    {
        abort_if(Gate::denies('newsroom_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $newsrooms = Newsroom::with(['media'])->get();

        return view('admin.newsrooms.index', compact('newsrooms'));
    }

    public function create()
    {
        abort_if(Gate::denies('newsroom_create'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return view('admin.newsrooms.create');
    }

    public function store(StoreNewsroomRequest $request)
    {
        $newsroom = Newsroom::create($request->all());

        // add slug
        $newsroom->slug = Str::of($newsroom->title)->slug('-');
        $newsroom->save();

        if ($request->input('image', false)) {
            $newsroom->addMedia(storage_path('tmp/uploads/' . basename($request->input('image'))))->toMediaCollection('image');
        }

        if ($media = $request->input('ck-media', false)) {
            Media::whereIn('id', $media)->update(['model_id' => $newsroom->id]);
        }

        return redirect()->route('admin.newsrooms.index');
    }

    public function edit(Newsroom $newsroom)
    {
        abort_if(Gate::denies('newsroom_edit'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return view('admin.newsrooms.edit', compact('newsroom'));
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

        return redirect()->route('admin.newsrooms.index');
    }

    public function show(Newsroom $newsroom)
    {
        abort_if(Gate::denies('newsroom_show'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return view('admin.newsrooms.show', compact('newsroom'));
    }

    public function destroy(Newsroom $newsroom)
    {
        abort_if(Gate::denies('newsroom_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $newsroom->delete();

        return back();
    }

    public function massDestroy(MassDestroyNewsroomRequest $request)
    {
        Newsroom::whereIn('id', request('ids'))->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }

    public function storeCKEditorImages(Request $request)
    {
        abort_if(Gate::denies('newsroom_create') && Gate::denies('newsroom_edit'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $model         = new Newsroom();
        $model->id     = $request->input('crud_id', 0);
        $model->exists = true;
        $media         = $model->addMediaFromRequest('upload')->toMediaCollection('ck-media');

        return response()->json(['id' => $media->id, 'url' => $media->getUrl()], Response::HTTP_CREATED);
    }
}
