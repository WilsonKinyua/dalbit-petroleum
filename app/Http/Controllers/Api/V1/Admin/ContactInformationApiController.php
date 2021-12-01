<?php

namespace App\Http\Controllers\Api\V1\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreContactInformationRequest;
use App\Http\Requests\UpdateContactInformationRequest;
use App\Http\Resources\Admin\ContactInformationResource;
use App\Models\ContactInformation;
use Gate;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class ContactInformationApiController extends Controller
{
    public function index()
    {
        abort_if(Gate::denies('contact_information_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return new ContactInformationResource(ContactInformation::with(['division', 'country'])->get());
    }

    public function store(StoreContactInformationRequest $request)
    {
        $contactInformation = ContactInformation::create($request->all());

        return (new ContactInformationResource($contactInformation))
            ->response()
            ->setStatusCode(Response::HTTP_CREATED);
    }

    public function show(ContactInformation $contactInformation)
    {
        abort_if(Gate::denies('contact_information_show'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        return new ContactInformationResource($contactInformation->load(['division', 'country']));
    }

    public function update(UpdateContactInformationRequest $request, ContactInformation $contactInformation)
    {
        $contactInformation->update($request->all());

        return (new ContactInformationResource($contactInformation))
            ->response()
            ->setStatusCode(Response::HTTP_ACCEPTED);
    }

    public function destroy(ContactInformation $contactInformation)
    {
        abort_if(Gate::denies('contact_information_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $contactInformation->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }
}
