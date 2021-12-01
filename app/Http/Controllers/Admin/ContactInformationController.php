<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\MassDestroyContactInformationRequest;
use App\Http\Requests\StoreContactInformationRequest;
use App\Http\Requests\UpdateContactInformationRequest;
use App\Models\Category;
use App\Models\ContactInformation;
use App\Models\Country;
use Gate;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class ContactInformationController extends Controller
{
    public function index()
    {
        abort_if(Gate::denies('contact_information_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $contactInformations = ContactInformation::with(['division', 'country'])->get();

        return view('admin.contactInformations.index', compact('contactInformations'));
    }

    public function create()
    {
        abort_if(Gate::denies('contact_information_create'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $divisions = Category::pluck('title', 'id')->prepend(trans('global.pleaseSelect'), '');

        $countries = Country::pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');

        return view('admin.contactInformations.create', compact('divisions', 'countries'));
    }

    public function store(StoreContactInformationRequest $request)
    {
        $contactInformation = ContactInformation::create($request->all());

        return redirect()->route('admin.contact-informations.index');
    }

    public function edit(ContactInformation $contactInformation)
    {
        abort_if(Gate::denies('contact_information_edit'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $divisions = Category::pluck('title', 'id')->prepend(trans('global.pleaseSelect'), '');

        $countries = Country::pluck('name', 'id')->prepend(trans('global.pleaseSelect'), '');

        $contactInformation->load('division', 'country');

        return view('admin.contactInformations.edit', compact('divisions', 'countries', 'contactInformation'));
    }

    public function update(UpdateContactInformationRequest $request, ContactInformation $contactInformation)
    {
        $contactInformation->update($request->all());

        return redirect()->route('admin.contact-informations.index');
    }

    public function show(ContactInformation $contactInformation)
    {
        abort_if(Gate::denies('contact_information_show'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $contactInformation->load('division', 'country', 'contactsDivisions');

        return view('admin.contactInformations.show', compact('contactInformation'));
    }

    public function destroy(ContactInformation $contactInformation)
    {
        abort_if(Gate::denies('contact_information_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $contactInformation->delete();

        return back();
    }

    public function massDestroy(MassDestroyContactInformationRequest $request)
    {
        ContactInformation::whereIn('id', request('ids'))->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }
}
