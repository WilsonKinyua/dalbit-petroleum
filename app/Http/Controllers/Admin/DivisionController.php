<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Traits\MediaUploadingTrait;
use App\Http\Requests\MassDestroyDivisionRequest;
use App\Http\Requests\StoreDivisionRequest;
use App\Http\Requests\UpdateDivisionRequest;
use App\Models\Category;
use App\Models\ContactInformation;
use App\Models\Country;
use App\Models\Division;
use Gate;
use Illuminate\Http\Request;
use Spatie\MediaLibrary\MediaCollections\Models\Media;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Str;

class DivisionController extends Controller
{
    use MediaUploadingTrait;

    public function index()
    {
        abort_if(Gate::denies('division_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $divisions = Division::with(['division_type', 'country', 'contacts', 'media'])->get();

        $categories = Category::get();

        $countries = Country::get();

        $contact_informations = ContactInformation::get();

        return view('admin.divisions.index', compact('divisions', 'categories', 'countries', 'contact_informations'));
    }

    public function create()
    {
        abort_if(Gate::denies('division_create'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $division_types = Category::pluck('title', 'id')->prepend(trans('global.pleaseSelect'), '');

        $countries = Country::pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');

        $contacts = ContactInformation::pluck('location', 'id')->prepend(trans('global.pleaseSelect'), '');

        return view('admin.divisions.create', compact('division_types', 'countries', 'contacts'));
    }

    public function store(StoreDivisionRequest $request)
    {
        $division = Division::create($request->all());
        $country_name = Country::find($request->country_id)->name;
        $division->slug = Str::of($country_name)->slug('-');
        if (Division::where('slug', $division->slug)->exists()) {
            $division->slug = (Str::of(Category::find($request->division_type_id)->title)->slug('-')) . '-' . $division->slug;
        } else {
            $division->slug = $division->slug;
        }
        $division->save();

        if ($request->input('country_image', false)) {
            $division->addMedia(storage_path('tmp/uploads/' . basename($request->input('country_image'))))->toMediaCollection('country_image');
        }

        if ($request->input('operation_image', false)) {
            $division->addMedia(storage_path('tmp/uploads/' . basename($request->input('operation_image'))))->toMediaCollection('operation_image');
        }

        if ($request->input('transport_image', false)) {
            $division->addMedia(storage_path('tmp/uploads/' . basename($request->input('transport_image'))))->toMediaCollection('transport_image');
        }

        if ($request->input('infrastructure_storage_image', false)) {
            $division->addMedia(storage_path('tmp/uploads/' . basename($request->input('infrastructure_storage_image'))))->toMediaCollection('infrastructure_storage_image');
        }

        if ($media = $request->input('ck-media', false)) {
            Media::whereIn('id', $media)->update(['model_id' => $division->id]);
        }

        return redirect()->route('admin.divisions.index');
    }

    public function edit(Division $division)
    {
        abort_if(Gate::denies('division_edit'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $division_types = Category::pluck('title', 'id')->prepend(trans('global.pleaseSelect'), '');

        $countries = Country::pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');

        $contacts = ContactInformation::pluck('location', 'id')->prepend(trans('global.pleaseSelect'), '');

        $division->load('division_type', 'country', 'contacts');

        return view('admin.divisions.edit', compact('division_types', 'countries', 'contacts', 'division'));
    }

    public function update(UpdateDivisionRequest $request, Division $division)
    {
        $division->update($request->all());

        if ($request->input('country_image', false)) {
            if (!$division->country_image || $request->input('country_image') !== $division->country_image->file_name) {
                if ($division->country_image) {
                    $division->country_image->delete();
                }
                $division->addMedia(storage_path('tmp/uploads/' . basename($request->input('country_image'))))->toMediaCollection('country_image');
            }
        } elseif ($division->country_image) {
            $division->country_image->delete();
        }

        if ($request->input('operation_image', false)) {
            if (!$division->operation_image || $request->input('operation_image') !== $division->operation_image->file_name) {
                if ($division->operation_image) {
                    $division->operation_image->delete();
                }
                $division->addMedia(storage_path('tmp/uploads/' . basename($request->input('operation_image'))))->toMediaCollection('operation_image');
            }
        } elseif ($division->operation_image) {
            $division->operation_image->delete();
        }

        if ($request->input('transport_image', false)) {
            if (!$division->transport_image || $request->input('transport_image') !== $division->transport_image->file_name) {
                if ($division->transport_image) {
                    $division->transport_image->delete();
                }
                $division->addMedia(storage_path('tmp/uploads/' . basename($request->input('transport_image'))))->toMediaCollection('transport_image');
            }
        } elseif ($division->transport_image) {
            $division->transport_image->delete();
        }

        if ($request->input('infrastructure_storage_image', false)) {
            if (!$division->infrastructure_storage_image || $request->input('infrastructure_storage_image') !== $division->infrastructure_storage_image->file_name) {
                if ($division->infrastructure_storage_image) {
                    $division->infrastructure_storage_image->delete();
                }
                $division->addMedia(storage_path('tmp/uploads/' . basename($request->input('infrastructure_storage_image'))))->toMediaCollection('infrastructure_storage_image');
            }
        } elseif ($division->infrastructure_storage_image) {
            $division->infrastructure_storage_image->delete();
        }

        return redirect()->route('admin.divisions.index');
    }

    public function show(Division $division)
    {
        abort_if(Gate::denies('division_show'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $division->load('division_type', 'country', 'contacts');

        return view('admin.divisions.show', compact('division'));
    }

    public function destroy(Division $division)
    {
        abort_if(Gate::denies('division_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $division->delete();

        return back();
    }

    public function massDestroy(MassDestroyDivisionRequest $request)
    {
        Division::whereIn('id', request('ids'))->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }

    public function storeCKEditorImages(Request $request)
    {
        abort_if(Gate::denies('division_create') && Gate::denies('division_edit'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $model         = new Division();
        $model->id     = $request->input('crud_id', 0);
        $model->exists = true;
        $media         = $model->addMediaFromRequest('upload')->toMediaCollection('ck-media');

        return response()->json(['id' => $media->id, 'url' => $media->getUrl()], Response::HTTP_CREATED);
    }
}
