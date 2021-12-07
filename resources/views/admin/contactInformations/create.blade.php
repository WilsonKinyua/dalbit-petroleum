@extends('layouts.admin')
@section('content')

    <div class="card">
        <div class="card-header">
            {{ trans('global.create') }} {{ trans('cruds.contactInformation.title_singular') }}
        </div>

        <div class="card-body">
            <form method="POST" action="{{ route('admin.contact-informations.store') }}" enctype="multipart/form-data">
                @csrf
                <div class="form-group">
                    <label class="required"
                        for="division_id">{{ trans('cruds.contactInformation.fields.division') }}</label>
                    <select class="form-control select2 {{ $errors->has('division') ? 'is-invalid' : '' }}"
                        name="division_id" id="division_id" required>
                        @foreach ($divisions as $id => $entry)
                            <option value="{{ $id }}" {{ old('division_id') == $id ? 'selected' : '' }}>
                                {{ $entry }}</option>
                        @endforeach
                    </select>
                    @if ($errors->has('division'))
                        <div class="invalid-feedback">
                            {{ $errors->first('division') }}
                        </div>
                    @endif
                    <span class="help-block">{{ trans('cruds.contactInformation.fields.division_helper') }}</span>
                </div>
                <div class="form-group">
                    <label class="required"
                        for="country_id">{{ trans('cruds.contactInformation.fields.country') }}</label>
                    <select class="form-control select2 {{ $errors->has('country') ? 'is-invalid' : '' }}"
                        name="country_id" id="country_id" required>
                        @foreach ($countries as $id => $entry)
                            <option value="{{ $id }}" {{ old('country_id') == $id ? 'selected' : '' }}>
                                {{ $entry }}</option>
                        @endforeach
                    </select>
                    @if ($errors->has('country'))
                        <div class="invalid-feedback">
                            {{ $errors->first('country') }}
                        </div>
                    @endif
                    <span class="help-block">{{ trans('cruds.contactInformation.fields.country_helper') }}</span>
                </div>
                <div class="form-group">
                    <label for="location">{{ trans('cruds.contactInformation.fields.location') }}</label>
                    <textarea class="form-control ckeditor {{ $errors->has('location') ? 'is-invalid' : '' }}"
                        name="location" id="location">{!! old('location') !!}</textarea>
                    @if ($errors->has('location'))
                        <div class="invalid-feedback">
                            {{ $errors->first('location') }}
                        </div>
                    @endif
                    <span class="help-block">{{ trans('cruds.contactInformation.fields.location_helper') }}</span>
                </div>
                <div class="form-group">
                    <label for="telephone">{{ trans('cruds.contactInformation.fields.telephone') }}</label>
                    <textarea class="form-control {{ $errors->has('telephone') ? 'is-invalid' : '' }}"
                        name="telephone" id="telephone">{!! old('telephone') !!}</textarea>
                    @if ($errors->has('telephone'))
                        <div class="invalid-feedback">
                            {{ $errors->first('telephone') }}
                        </div>
                    @endif
                    <span class="help-block">{{ trans('cruds.contactInformation.fields.telephone_helper') }}</span>
                </div>
                <div class="form-group">
                    <label for="fax">{{ trans('cruds.contactInformation.fields.fax') }}</label>
                    <textarea class="form-control {{ $errors->has('fax') ? 'is-invalid' : '' }}" name="fax"
                        id="fax">{!! old('fax') !!}</textarea>
                    @if ($errors->has('fax'))
                        <div class="invalid-feedback">
                            {{ $errors->first('fax') }}
                        </div>
                    @endif
                    <span class="help-block">{{ trans('cruds.contactInformation.fields.fax_helper') }}</span>
                </div>
                <div class="form-group">
                    <label for="email">{{ trans('cruds.contactInformation.fields.email') }}</label>
                    <input class="form-control {{ $errors->has('email') ? 'is-invalid' : '' }}" type="email" name="email"
                        id="email" value="{{ old('email') }}">
                    @if ($errors->has('email'))
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

@section('scripts')
    <script>
        Dropzone.options.imageDropzone = {
            url: '{{ route('admin.newsrooms.storeMedia') }}',
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
            success: function(file, response) {
                $('form').find('input[name="image"]').remove()
                $('form').append('<input type="hidden" name="image" value="' + response.name + '">')
            },
            removedfile: function(file) {
                file.previewElement.remove()
                if (file.status !== 'error') {
                    $('form').find('input[name="image"]').remove()
                    this.options.maxFiles = this.options.maxFiles + 1
                }
            },
            init: function() {
                @if (isset($newsroom) && $newsroom->image)
                    var file = {!! json_encode($newsroom->image) !!}
                    this.options.addedfile.call(this, file)
                    this.options.thumbnail.call(this, file, file.preview)
                    file.previewElement.classList.add('dz-complete')
                    $('form').append('<input type="hidden" name="image" value="' + file.file_name + '">')
                    this.options.maxFiles = this.options.maxFiles - 1
                @endif
            },
            error: function(file, response) {
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
        $(document).ready(function() {
            function SimpleUploadAdapter(editor) {
                editor.plugins.get('FileRepository').createUploadAdapter = function(loader) {
                    return {
                        upload: function() {
                            return loader.file
                                .then(function(file) {
                                    return new Promise(function(resolve, reject) {
                                        // Init request
                                        var xhr = new XMLHttpRequest();
                                        xhr.open('POST',
                                            '{{ route('admin.newsrooms.storeCKEditorImages') }}',
                                            true);
                                        xhr.setRequestHeader('x-csrf-token', window._token);
                                        xhr.setRequestHeader('Accept', 'application/json');
                                        xhr.responseType = 'json';

                                        // Init listeners
                                        var genericErrorText =
                                            `Couldn't upload file: ${ file.name }.`;
                                        xhr.addEventListener('error', function() {
                                            reject(genericErrorText)
                                        });
                                        xhr.addEventListener('abort', function() {
                                            reject()
                                        });
                                        xhr.addEventListener('load', function() {
                                            var response = xhr.response;

                                            if (!response || xhr.status !== 201) {
                                                return reject(response && response
                                                    .message ?
                                                    `${genericErrorText}\n${xhr.status} ${response.message}` :
                                                    `${genericErrorText}\n ${xhr.status} ${xhr.statusText}`
                                                );
                                            }

                                            $('form').append(
                                                '<input type="hidden" name="ck-media[]" value="' +
                                                response.id + '">');

                                            resolve({
                                                default: response.url
                                            });
                                        });

                                        if (xhr.upload) {
                                            xhr.upload.addEventListener('progress', function(
                                                e) {
                                                if (e.lengthComputable) {
                                                    loader.uploadTotal = e.total;
                                                    loader.uploaded = e.loaded;
                                                }
                                            });
                                        }

                                        // Send request
                                        var data = new FormData();
                                        data.append('upload', file);
                                        data.append('crud_id', '{{ $newsroom->id ?? 0 }}');
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

@endsection
