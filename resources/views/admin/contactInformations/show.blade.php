@extends('layouts.admin')
@section('content')

<div class="card">
    <div class="card-header">
        {{ trans('global.show') }} {{ trans('cruds.contactInformation.title') }}
    </div>

    <div class="card-body">
        <div class="form-group">
            <div class="form-group">
                <a class="btn btn-default" href="{{ route('admin.contact-informations.index') }}">
                    {{ trans('global.back_to_list') }}
                </a>
            </div>
            <table class="table table-bordered table-striped">
                <tbody>
                    <tr>
                        <th>
                            {{ trans('cruds.contactInformation.fields.id') }}
                        </th>
                        <td>
                            {{ $contactInformation->id }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.contactInformation.fields.division') }}
                        </th>
                        <td>
                            {{ $contactInformation->division->title ?? '' }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.contactInformation.fields.country') }}
                        </th>
                        <td>
                            {{ $contactInformation->country->name ?? '' }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.contactInformation.fields.location') }}
                        </th>
                        <td>
                            {{ $contactInformation->location }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.contactInformation.fields.telephone') }}
                        </th>
                        <td>
                            {{ $contactInformation->telephone }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.contactInformation.fields.fax') }}
                        </th>
                        <td>
                            {{ $contactInformation->fax }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.contactInformation.fields.email') }}
                        </th>
                        <td>
                            {{ $contactInformation->email }}
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="form-group">
                <a class="btn btn-default" href="{{ route('admin.contact-informations.index') }}">
                    {{ trans('global.back_to_list') }}
                </a>
            </div>
        </div>
    </div>
</div>

<div class="card">
    <div class="card-header">
        {{ trans('global.relatedData') }}
    </div>
    <ul class="nav nav-tabs" role="tablist" id="relationship-tabs">
        <li class="nav-item">
            <a class="nav-link" href="#contacts_divisions" role="tab" data-toggle="tab">
                {{ trans('cruds.division.title') }}
            </a>
        </li>
    </ul>
    <div class="tab-content">
        <div class="tab-pane" role="tabpanel" id="contacts_divisions">
            @includeIf('admin.contactInformations.relationships.contactsDivisions', ['divisions' => $contactInformation->contactsDivisions])
        </div>
    </div>
</div>

@endsection