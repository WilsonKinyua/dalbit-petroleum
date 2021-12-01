@extends('layouts.admin')
@section('content')

<div class="card">
    <div class="card-header">
        {{ trans('global.show') }} {{ trans('cruds.division.title') }}
    </div>

    <div class="card-body">
        <div class="form-group">
            <div class="form-group">
                <a class="btn btn-default" href="{{ route('admin.divisions.index') }}">
                    {{ trans('global.back_to_list') }}
                </a>
            </div>
            <table class="table table-bordered table-striped">
                <tbody>
                    <tr>
                        <th>
                            {{ trans('cruds.division.fields.id') }}
                        </th>
                        <td>
                            {{ $division->id }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.division.fields.division_type') }}
                        </th>
                        <td>
                            {{ $division->division_type->title ?? '' }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.division.fields.country') }}
                        </th>
                        <td>
                            {{ $division->country->name ?? '' }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.division.fields.country_image') }}
                        </th>
                        <td>
                            @if($division->country_image)
                                <a href="{{ $division->country_image->getUrl() }}" target="_blank" style="display: inline-block">
                                    <img src="{{ $division->country_image->getUrl('thumb') }}">
                                </a>
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.division.fields.country_description') }}
                        </th>
                        <td>
                            {!! $division->country_description !!}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.division.fields.operation_image') }}
                        </th>
                        <td>
                            @if($division->operation_image)
                                <a href="{{ $division->operation_image->getUrl() }}" target="_blank" style="display: inline-block">
                                    <img src="{{ $division->operation_image->getUrl('thumb') }}">
                                </a>
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.division.fields.operation_description') }}
                        </th>
                        <td>
                            {!! $division->operation_description !!}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.division.fields.transport_image') }}
                        </th>
                        <td>
                            @if($division->transport_image)
                                <a href="{{ $division->transport_image->getUrl() }}" target="_blank" style="display: inline-block">
                                    <img src="{{ $division->transport_image->getUrl('thumb') }}">
                                </a>
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.division.fields.transport_description') }}
                        </th>
                        <td>
                            {!! $division->transport_description !!}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.division.fields.infrastructure_storage_image') }}
                        </th>
                        <td>
                            @if($division->infrastructure_storage_image)
                                <a href="{{ $division->infrastructure_storage_image->getUrl() }}" target="_blank" style="display: inline-block">
                                    <img src="{{ $division->infrastructure_storage_image->getUrl('thumb') }}">
                                </a>
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.division.fields.infrastructure_storage_description') }}
                        </th>
                        <td>
                            {!! $division->infrastructure_storage_description !!}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.division.fields.contacts') }}
                        </th>
                        <td>
                            {{ $division->contacts->email ?? '' }}
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="form-group">
                <a class="btn btn-default" href="{{ route('admin.divisions.index') }}">
                    {{ trans('global.back_to_list') }}
                </a>
            </div>
        </div>
    </div>
</div>



@endsection