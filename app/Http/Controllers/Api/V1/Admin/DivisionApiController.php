<?php

namespace App\Http\Controllers\Api\V1\Admin;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Traits\MediaUploadingTrait;
use App\Http\Requests\StoreDivisionRequest;
use App\Http\Requests\UpdateDivisionRequest;
use App\Http\Resources\Admin\DivisionResource;
use App\Models\Division;
use Gate;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class DivisionApiController extends Controller
{
    use MediaUploadingTrait;

    public function index()
    {
        abort_if(Gate::denies('division_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return new DivisionResource(Division::with(['division_type', 'country', 'contacts'])->get());
    }

    public function store(StoreDivisionRequest $request)
    {
        $division = Division::create($request->all());

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

        return (new DivisionResource($division))
            ->response()
            ->setStatusCode(Response::HTTP_CREATED);
    }

    public function show(Division $division)
    {
        abort_if(Gate::denies('division_show'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return new DivisionResource($division->load(['division_type', 'country', 'contacts']));
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

        return (new DivisionResource($division))
            ->response()
            ->setStatusCode(Response::HTTP_ACCEPTED);
    }

    public function destroy(Division $division)
    {
        abort_if(Gate::denies('division_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $division->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }
}
