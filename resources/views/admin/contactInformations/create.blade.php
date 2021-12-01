@extends('layouts.admin')
@section('content')

<div class="card">
    <div class="card-header">
        {{ trans('global.create') }} {{ trans('cruds.contactInformation.title_singular') }}
    </div>

    <div class="card-body">
        <form method="POST" action="{{ route("admin.contact-informations.store") }}" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label class="required" for="division_id">{{ trans('cruds.contactInformation.fields.division') }}</label>
                <select class="form-control select2 {{ $errors->has('division') ? 'is-invalid' : '' }}" name="division_id" id="division_id" required>
                    @foreach($divisions as $id => $entry)
                        <option value="{{ $id }}" {{ old('division_id') == $id ? 'selected' : '' }}>{{ $entry }}</option>
                    @endforeach
                </select>
                @if($errors->has('division'))
                    <div class="invalid-feedback">
                        {{ $errors->first('division') }}
                    </div>
                @endif
                <span class="help-block">{{ trans('cruds.contactInformation.fields.division_helper') }}</span>
            </div>
            <div class="form-group">
                <label class="required" for="country_id">{{ trans('cruds.contactInformation.fields.country') }}</label>
                <select class="form-control select2 {{ $errors->has('country') ? 'is-invalid' : '' }}" name="country_id" id="country_id" required>
                    @foreach($countries as $id => $entry)
                        <option value="{{ $id }}" {{ old('country_id') == $id ? 'selected' : '' }}>{{ $entry }}</option>
                    @endforeach
                </select>
                @if($errors->has('country'))
                    <div class="invalid-feedback">
                        {{ $errors->first('country') }}
                    </div>
                @endif
                <span class="help-block">{{ trans('cruds.contactInformation.fields.country_helper') }}</span>
            </div>
            <div class="form-group">
                <label class="required" for="location">{{ trans('cruds.contactInformation.fields.location') }}</label>
                <textarea class="form-control {{ $errors->has('location') ? 'is-invalid' : '' }}" name="location" id="location" required>{{ old('location') }}</textarea>
                @if($errors->has('location'))
                    <div class="invalid-feedback">
                        {{ $errors->first('location') }}
                    </div>
                @endif
                <span class="help-block">{{ trans('cruds.contactInformation.fields.location_helper') }}</span>
            </div>
            <div class="form-group">
                <label for="telephone">{{ trans('cruds.contactInformation.fields.telephone') }}</label>
                <textarea class="form-control {{ $errors->has('telephone') ? 'is-invalid' : '' }}" name="telephone" id="telephone">{{ old('telephone') }}</textarea>
                @if($errors->has('telephone'))
                    <div class="invalid-feedback">
                        {{ $errors->first('telephone') }}
                    </div>
                @endif
                <span class="help-block">{{ trans('cruds.contactInformation.fields.telephone_helper') }}</span>
            </div>
            <div class="form-group">
                <label for="fax">{{ trans('cruds.contactInformation.fields.fax') }}</label>
                <textarea class="form-control {{ $errors->has('fax') ? 'is-invalid' : '' }}" name="fax" id="fax">{{ old('fax') }}</textarea>
                @if($errors->has('fax'))
                    <div class="invalid-feedback">
                        {{ $errors->first('fax') }}
                    </div>
                @endif
                <span class="help-block">{{ trans('cruds.contactInformation.fields.fax_helper') }}</span>
            </div>
            <div class="form-group">
                <label for="email">{{ trans('cruds.contactInformation.fields.email') }}</label>
                <input class="form-control {{ $errors->has('email') ? 'is-invalid' : '' }}" type="email" name="email" id="email" value="{{ old('email') }}">
                @if($errors->has('email'))
                    <div class="invalid-feedback">
                        {{ $errors->first('email') }}
                    </div>
                @endif
                <span class="help-block">{{ trans('cruds.contactInformation.fields.email_helper') }}</span>
            </div>
            <div class="form-group">
                <button class="btn btn-danger" type="submit">
                    {{ trans('global.save') }}
                </button>
            </div>
        </form>
    </div>
</div>



@endsection