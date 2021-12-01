@extends('layouts.admin')
@section('content')

<div class="card">
    <div class="card-header">
        {{ trans('global.show') }} {{ trans('cruds.newsroom.title') }}
    </div>

    <div class="card-body">
        <div class="form-group">
            <div class="form-group">
                <a class="btn btn-default" href="{{ route('admin.newsrooms.index') }}">
                    {{ trans('global.back_to_list') }}
                </a>
            </div>
            <table class="table table-bordered table-striped">
                <tbody>
                    <tr>
                        <th>
                            {{ trans('cruds.newsroom.fields.id') }}
                        </th>
                        <td>
                            {{ $newsroom->id }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.newsroom.fields.title') }}
                        </th>
                        <td>
                            {{ $newsroom->title }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.newsroom.fields.location') }}
                        </th>
                        <td>
                            {{ $newsroom->location }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.newsroom.fields.image') }}
                        </th>
                        <td>
                            @if($newsroom->image)
                                <a href="{{ $newsroom->image->getUrl() }}" target="_blank" style="display: inline-block">
                                    <img src="{{ $newsroom->image->getUrl('thumb') }}">
                                </a>
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <th>
                            {{ trans('cruds.newsroom.fields.description') }}
                        </th>
                        <td>
                            {!! $newsroom->description !!}
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="form-group">
                <a class="btn btn-default" href="{{ route('admin.newsrooms.index') }}">
                    {{ trans('global.back_to_list') }}
                </a>
            </div>
        </div>
    </div>
</div>



@endsection