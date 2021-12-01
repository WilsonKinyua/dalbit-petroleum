@extends('layouts.admin')
@section('content')

<div class="card">
    <div class="card-header">
        {{ trans('global.edit') }} {{ trans('cruds.division.title_singular') }}
    </div>

    <div class="card-body">
        <form method="POST" action="{{ route("admin.divisions.update", [$division->id]) }}" enctype="multipart/form-data">
            @method('PUT')
            @csrf
            <div class="form-group">
                <label class="required" for="division_type_id">{{ trans('cruds.division.fields.division_type') }}</label>
                <select class="form-control select2 {{ $errors->has('division_type') ? 'is-invalid' : '' }}" name="division_type_id" id="division_type_id" required>
                    @foreach($division_types as $id => $entry)
                        <option value="{{ $id }}" {{ (old('division_type_id') ? old('division_type_id') : $division->division_type->id ?? '') == $id ? 'selected' : '' }}>{{ $entry }}</option>
                    @endforeach
                </select>
                @if($errors->has('division_type'))
                    <div class="invalid-feedback">
                        {{ $errors->first('division_type') }}
                    </div>
                @endif
                <span class="help-block">{{ trans('cruds.division.fields.division_type_helper') }}</span>
            </div>
            <div class="form-group">
                <label class="required" for="country_id">{{ trans('cruds.division.fields.country') }}</label>
                <select class="form-control select2 {{ $errors->has('country') ? 'is-invalid' : '' }}" name="country_id" id="country_id" required>
                    @foreach($countries as $id => $entry)
                        <option value="{{ $id }}" {{ (old('country_id') ? old('country_id') : $division->country->id ?? '') == $id ? 'selected' : '' }}>{{ $entry }}</option>
                    @endforeach
                </select>
                @if($errors->has('country'))
                    <div class="invalid-feedback">
                        {{ $errors->first('country') }}
                    </div>
                @endif
                <span class="help-block">{{ trans('cruds.division.fields.country_helper') }}</span>
            </div>
            <div class="form-group">
                <label class="required" for="country_image">{{ trans('cruds.division.fields.country_image') }}</label>
                <div class="needsclick dropzone {{ $errors->has('country_image') ? 'is-invalid' : '' }}" id="country_image-dropzone">
                </div>
                @if($errors->has('country_image'))
                    <div class="invalid-feedback">
                        {{ $errors->first('country_image') }}
                    </div>
                @endif
                <span class="help-block">{{ trans('cruds.division.fields.country_image_helper') }}</span>
            </div>
            <div class="form-group">
                <label for="country_description">{{ trans('cruds.division.fields.country_description') }}</label>
                <textarea class="form-control ckeditor {{ $errors->has('country_description') ? 'is-invalid' : '' }}" name="country_description" id="country_description">{!! old('country_description', $division->country_description) !!}</textarea>
                @if($errors->has('country_description'))
                    <div class="invalid-feedback">
                        {{ $errors->first('country_description') }}
                    </div>
                @endif
                <span class="help-block">{{ trans('cruds.division.fields.country_description_helper') }}</span>
            </div>
            <div class="form-group">
                <label for="operation_image">{{ trans('cruds.division.fields.operation_image') }}</label>
                <div class="needsclick dropzone {{ $errors->has('operation_image') ? 'is-invalid' : '' }}" id="operation_image-dropzone">
                </div>
                @if($errors->has('operation_image'))
                    <div class="invalid-feedback">
                        {{ $errors->first('operation_image') }}
                    </div>
                @endif
                <span class="help-block">{{ trans('cruds.division.fields.operation_image_helper') }}</span>
            </div>
            <div class="form-group">
                <label for="operation_description">{{ trans('cruds.division.fields.operation_description') }}</label>
                <textarea class="form-control ckeditor {{ $errors->has('operation_description') ? 'is-invalid' : '' }}" name="operation_description" id="operation_description">{!! old('operation_description', $division->operation_description) !!}</textarea>
                @if($errors->has('operation_description'))
                    <div class="invalid-feedback">
                        {{ $errors->first('operation_description') }}
                    </div>
                @endif
                <span class="help-block">{{ trans('cruds.division.fields.operation_description_helper') }}</span>
            </div>
            <div class="form-group">
                <label for="transport_image">{{ trans('cruds.division.fields.transport_image') }}</label>
                <div class="needsclick dropzone {{ $errors->has('transport_image') ? 'is-invalid' : '' }}" id="transport_image-dropzone">
                </div>
                @if($errors->has('transport_image'))
                    <div class="invalid-feedback">
                        {{ $errors->first('transport_image') }}
                    </div>
                @endif
                <span class="help-block">{{ trans('cruds.division.fields.transport_image_helper') }}</span>
            </div>
            <div class="form-group">
                <label for="transport_description">{{ trans('cruds.division.fields.transport_description') }}</label>
                <textarea class="form-control ckeditor {{ $errors->has('transport_description') ? 'is-invalid' : '' }}" name="transport_description" id="transport_description">{!! old('transport_description', $division->transport_description) !!}</textarea>
                @if($errors->has('transport_description'))
                    <div class="invalid-feedback">
                        {{ $errors->first('transport_description') }}
                    </div>
                @endif
                <span class="help-block">{{ trans('cruds.division.fields.transport_description_helper') }}</span>
            </div>
            <div class="form-group">
                <label for="infrastructure_storage_image">{{ trans('cruds.division.fields.infrastructure_storage_image') }}</label>
                <div class="needsclick dropzone {{ $errors->has('infrastructure_storage_image') ? 'is-invalid' : '' }}" id="infrastructure_storage_image-dropzone">
                </div>
                @if($errors->has('infrastructure_storage_image'))
                    <div class="invalid-feedback">
                        {{ $errors->first('infrastructure_storage_image') }}
                    </div>
                @endif
                <span class="help-block">{{ trans('cruds.division.fields.infrastructure_storage_image_helper') }}</span>
            </div>
            <div class="form-group">
                <label for="infrastructure_storage_description">{{ trans('cruds.division.fields.infrastructure_storage_description') }}</label>
                <textarea class="form-control ckeditor {{ $errors->has('infrastructure_storage_description') ? 'is-invalid' : '' }}" name="infrastructure_storage_description" id="infrastructure_storage_description">{!! old('infrastructure_storage_description', $division->infrastructure_storage_description) !!}</textarea>
                @if($errors->has('infrastructure_storage_description'))
                    <div class="invalid-feedback">
                        {{ $errors->first('infrastructure_storage_description') }}
                    </div>
                @endif
                <span class="help-block">{{ trans('cruds.division.fields.infrastructure_storage_description_helper') }}</span>
            </div>
            <div class="form-group">
                <label for="contacts_id">{{ trans('cruds.division.fields.contacts') }}</label>
                <select class="form-control select2 {{ $errors->has('contacts') ? 'is-invalid' : '' }}" name="contacts_id" id="contacts_id">
                    @foreach($contacts as $id => $entry)
                        <option value="{{ $id }}" {{ (old('contacts_id') ? old('contacts_id') : $division->contacts->id ?? '') == $id ? 'selected' : '' }}>{{ $entry }}</option>
                    @endforeach
                </select>
                @if($errors->has('contacts'))
                    <div class="invalid-feedback">
                        {{ $errors->first('contacts') }}
                    </div>
                @endif
                <span class="help-block">{{ trans('cruds.division.fields.contacts_helper') }}</span>
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

@section('scripts')
<script>
    Dropzone.options.countryImageDropzone = {
    url: '{{ route('admin.divisions.storeMedia') }}',
    maxFilesize: 10, // MB
    acceptedFiles: '.jpeg,.jpg,.png,.gif',
    maxFiles: 1,
    addRemoveLinks: true,
    headers: {
      'X-CSRF-TOKEN': "{{ csrf_token() }}"
    },
    params: {
      size: 10,
      width: 4096,
      height: 4096
    },
    success: function (file, response) {
      $('form').find('input[name="country_image"]').remove()
      $('form').append('<input type="hidden" name="country_image" value="' + response.name + '">')
    },
    removedfile: function (file) {
      file.previewElement.remove()
      if (file.status !== 'error') {
        $('form').find('input[name="country_image"]').remove()
        this.options.maxFiles = this.options.maxFiles + 1
      }
    },
    init: function () {
@if(isset($division) && $division->country_image)
      var file = {!! json_encode($division->country_image) !!}
          this.options.addedfile.call(this, file)
      this.options.thumbnail.call(this, file, file.preview)
      file.previewElement.classList.add('dz-complete')
      $('form').append('<input type="hidden" name="country_image" value="' + file.file_name + '">')
      this.options.maxFiles = this.options.maxFiles - 1
@endif
    },
    error: function (file, response) {
        if ($.type(response) === 'string') {
            var message = response //dropzone sends it's own error messages in string
        } else {
            var message = response.errors.file
        }
        file.previewElement.classList.add('dz-error')
        _ref = file.previewElement.querySelectorAll('[data-dz-errormessage]')
        _results = []
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
            node = _ref[_i]
            _results.push(node.textContent = message)
        }

        return _results
    }
}
</script>
<script>
    $(document).ready(function () {
  function SimpleUploadAdapter(editor) {
    editor.plugins.get('FileRepository').createUploadAdapter = function(loader) {
      return {
        upload: function() {
          return loader.file
            .then(function (file) {
              return new Promise(function(resolve, reject) {
                // Init request
                var xhr = new XMLHttpRequest();
                xhr.open('POST', '{{ route('admin.divisions.storeCKEditorImages') }}', true);
                xhr.setRequestHeader('x-csrf-token', window._token);
                xhr.setRequestHeader('Accept', 'application/json');
                xhr.responseType = 'json';

                // Init listeners
                var genericErrorText = `Couldn't upload file: ${ file.name }.`;
                xhr.addEventListener('error', function() { reject(genericErrorText) });
                xhr.addEventListener('abort', function() { reject() });
                xhr.addEventListener('load', function() {
                  var response = xhr.response;

                  if (!response || xhr.status !== 201) {
                    return reject(response && response.message ? `${genericErrorText}\n${xhr.status} ${response.message}` : `${genericErrorText}\n ${xhr.status} ${xhr.statusText}`);
                  }

                  $('form').append('<input type="hidden" name="ck-media[]" value="' + response.id + '">');

                  resolve({ default: response.url });
                });

                if (xhr.upload) {
                  xhr.upload.addEventListener('progress', function(e) {
                    if (e.lengthComputable) {
                      loader.uploadTotal = e.total;
                      loader.uploaded = e.loaded;
                    }
                  });
                }

                // Send request
                var data = new FormData();
                data.append('upload', file);
                data.append('crud_id', '{{ $division->id ?? 0 }}');
                xhr.send(data);
              });
            })
        }
      };
    }
  }

  var allEditors = document.querySelectorAll('.ckeditor');
  for (var i = 0; i < allEditors.length; ++i) {
    ClassicEditor.create(
      allEditors[i], {
        extraPlugins: [SimpleUploadAdapter]
      }
    );
  }
});
</script>

<script>
    Dropzone.options.operationImageDropzone = {
    url: '{{ route('admin.divisions.storeMedia') }}',
    maxFilesize: 10, // MB
    acceptedFiles: '.jpeg,.jpg,.png,.gif',
    maxFiles: 1,
    addRemoveLinks: true,
    headers: {
      'X-CSRF-TOKEN': "{{ csrf_token() }}"
    },
    params: {
      size: 10,
      width: 4096,
      height: 4096
    },
    success: function (file, response) {
      $('form').find('input[name="operation_image"]').remove()
      $('form').append('<input type="hidden" name="operation_image" value="' + response.name + '">')
    },
    removedfile: function (file) {
      file.previewElement.remove()
      if (file.status !== 'error') {
        $('form').find('input[name="operation_image"]').remove()
        this.options.maxFiles = this.options.maxFiles + 1
      }
    },
    init: function () {
@if(isset($division) && $division->operation_image)
      var file = {!! json_encode($division->operation_image) !!}
          this.options.addedfile.call(this, file)
      this.options.thumbnail.call(this, file, file.preview)
      file.previewElement.classList.add('dz-complete')
      $('form').append('<input type="hidden" name="operation_image" value="' + file.file_name + '">')
      this.options.maxFiles = this.options.maxFiles - 1
@endif
    },
    error: function (file, response) {
        if ($.type(response) === 'string') {
            var message = response //dropzone sends it's own error messages in string
        } else {
            var message = response.errors.file
        }
        file.previewElement.classList.add('dz-error')
        _ref = file.previewElement.querySelectorAll('[data-dz-errormessage]')
        _results = []
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
            node = _ref[_i]
            _results.push(node.textContent = message)
        }

        return _results
    }
}
</script>
<script>
    Dropzone.options.transportImageDropzone = {
    url: '{{ route('admin.divisions.storeMedia') }}',
    maxFilesize: 10, // MB
    acceptedFiles: '.jpeg,.jpg,.png,.gif',
    maxFiles: 1,
    addRemoveLinks: true,
    headers: {
      'X-CSRF-TOKEN': "{{ csrf_token() }}"
    },
    params: {
      size: 10,
      width: 4096,
      height: 4096
    },
    success: function (file, response) {
      $('form').find('input[name="transport_image"]').remove()
      $('form').append('<input type="hidden" name="transport_image" value="' + response.name + '">')
    },
    removedfile: function (file) {
      file.previewElement.remove()
      if (file.status !== 'error') {
        $('form').find('input[name="transport_image"]').remove()
        this.options.maxFiles = this.options.maxFiles + 1
      }
    },
    init: function () {
@if(isset($division) && $division->transport_image)
      var file = {!! json_encode($division->transport_image) !!}
          this.options.addedfile.call(this, file)
      this.options.thumbnail.call(this, file, file.preview)
      file.previewElement.classList.add('dz-complete')
      $('form').append('<input type="hidden" name="transport_image" value="' + file.file_name + '">')
      this.options.maxFiles = this.options.maxFiles - 1
@endif
    },
    error: function (file, response) {
        if ($.type(response) === 'string') {
            var message = response //dropzone sends it's own error messages in string
        } else {
            var message = response.errors.file
        }
        file.previewElement.classList.add('dz-error')
        _ref = file.previewElement.querySelectorAll('[data-dz-errormessage]')
        _results = []
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
            node = _ref[_i]
            _results.push(node.textContent = message)
        }

        return _results
    }
}
</script>
<script>
    Dropzone.options.infrastructureStorageImageDropzone = {
    url: '{{ route('admin.divisions.storeMedia') }}',
    maxFilesize: 10, // MB
    acceptedFiles: '.jpeg,.jpg,.png,.gif',
    maxFiles: 1,
    addRemoveLinks: true,
    headers: {
      'X-CSRF-TOKEN': "{{ csrf_token() }}"
    },
    params: {
      size: 10,
      width: 4096,
      height: 4096
    },
    success: function (file, response) {
      $('form').find('input[name="infrastructure_storage_image"]').remove()
      $('form').append('<input type="hidden" name="infrastructure_storage_image" value="' + response.name + '">')
    },
    removedfile: function (file) {
      file.previewElement.remove()
      if (file.status !== 'error') {
        $('form').find('input[name="infrastructure_storage_image"]').remove()
        this.options.maxFiles = this.options.maxFiles + 1
      }
    },
    init: function () {
@if(isset($division) && $division->infrastructure_storage_image)
      var file = {!! json_encode($division->infrastructure_storage_image) !!}
          this.options.addedfile.call(this, file)
      this.options.thumbnail.call(this, file, file.preview)
      file.previewElement.classList.add('dz-complete')
      $('form').append('<input type="hidden" name="infrastructure_storage_image" value="' + file.file_name + '">')
      this.options.maxFiles = this.options.maxFiles - 1
@endif
    },
    error: function (file, response) {
        if ($.type(response) === 'string') {
            var message = response //dropzone sends it's own error messages in string
        } else {
            var message = response.errors.file
        }
        file.previewElement.classList.add('dz-error')
        _ref = file.previewElement.querySelectorAll('[data-dz-errormessage]')
        _results = []
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
            node = _ref[_i]
            _results.push(node.textContent = message)
        }

        return _results
    }
}
</script>
@endsection