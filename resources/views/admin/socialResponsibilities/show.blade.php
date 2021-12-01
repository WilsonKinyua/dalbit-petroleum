@extends('layouts.admin')
@section('content')

<div class="card">
    <div class="card-header">
        {{ trans('global.show') }} {{ trans('cruds.socialResponsibility.title') }}
    </div>

    <div class="card-body">
        <div class="form-group">
            <div class="form-group">
                <a class="btn btn-default" href="{{ route('admin.social-responsibilities.index') }}">
                    {{ trans('global.back_to_list') }}
                </a>
            </div>
            <table class="table table-bordered table-striped">
                <tbody>
                    <tr>
                        <th>
                            {{ trans('cruds.socialResponsibility.fields.id') }}
                        </th>
                        <td>
                            {{ $socialResponsibility->id }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.socialResponsibility.fields.title') }}
                        </th>
                        <td>
                            {{ $socialResponsibility->title }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.socialResponsibility.fields.image') }}
                        </th>
                        <td>
                            @if($socialResponsibility->image)
                                <a href="{{ $socialResponsibility->image->getUrl() }}" target="_blank" style="display: inline-block">
                                    <img src="{{ $socialResponsibility->image->getUrl('thumb') }}">
                                </a>
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.socialResponsibility.fields.description') }}
                        </th>
                        <td>
                            {!! $socialResponsibility->description !!}
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="form-group">
                <a class="btn btn-default" href="{{ route('admin.social-responsibilities.index') }}">
                    {{ trans('global.back_to_list') }}
                </a>
            </div>
        </div>
    </div>
</div>



@endsection