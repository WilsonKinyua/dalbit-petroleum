@extends('layouts.admin')
@section('content')
@can('contact_information_create')
    <div style="margin-bottom: 10px;" class="row">
        <div class="col-lg-12">
            <a class="btn btn-success" href="{{ route('admin.contact-informations.create') }}">
                {{ trans('global.add') }} {{ trans('cruds.contactInformation.title_singular') }}
            </a>
        </div>
    </div>
@endcan
<div class="card">
    <div class="card-header">
        {{ trans('cruds.contactInformation.title_singular') }} {{ trans('global.list') }}
    </div>

    <div class="card-body">
        <div class="table-responsive">
            <table class=" table table-bordered table-striped table-hover datatable datatable-ContactInformation">
                <thead>
                    <tr>
                        <th width="10">

                        </th>
                        <th>
                            {{ trans('cruds.contactInformation.fields.id') }}
                        </th>
                        <th>
                            {{ trans('cruds.contactInformation.fields.division') }}
                        </th>
                        <th>
                            {{ trans('cruds.contactInformation.fields.country') }}
                        </th>
                        <th>
                            {{ trans('cruds.country.fields.short_code') }}
                        </th>
                        <th>
                            {{ trans('cruds.contactInformation.fields.location') }}
                        </th>
                        <th>
                            {{ trans('cruds.contactInformation.fields.telephone') }}
                        </th>
                        <th>
                            {{ trans('cruds.contactInformation.fields.fax') }}
                        </th>
                        <th>
                            {{ trans('cruds.contactInformation.fields.email') }}
                        </th>
                        <th>
                            &nbsp;
                        </th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($contactInformations as $key => $contactInformation)
                        <tr data-entry-id="{{ $contactInformation->id }}">
                            <td>

                            </td>
                            <td>
                                {{ $contactInformation->id ?? '' }}
                            </td>
                            <td>
                                {{ $contactInformation->division->title ?? '' }}
                            </td>
                            <td>
                                {{ $contactInformation->country->name ?? '' }}
                            </td>
                            <td>
                                {{ $contactInformation->country->short_code ?? '' }}
                            </td>
                            <td>
                                {!! $contactInformation->location ?? '' !!}
                            </td>
                            <td>
                                {!! $contactInformation->telephone ?? '' !!}
                            </td>
                            <td>
                                {!! $contactInformation->fax ?? '' !!}
                            </td>
                            <td>
                                {!! $contactInformation->email ?? '' !!}
                            </td>
                            <td>
                                @can('contact_information_show')
                                    <a class="btn btn-xs btn-primary" href="{{ route('admin.contact-informations.show', $contactInformation->id) }}">
                                        {{ trans('global.view') }}
                                    </a>
                                @endcan

                                @can('contact_information_edit')
                                    <a class="btn btn-xs btn-info" href="{{ route('admin.contact-informations.edit', $contactInformation->id) }}">
                                        {{ trans('global.edit') }}
                                    </a>
                                @endcan

                                @can('contact_information_delete')
                                    <form action="{{ route('admin.contact-informations.destroy', $contactInformation->id) }}" method="POST" onsubmit="return confirm('{{ trans('global.areYouSure') }}');" style="display: inline-block;">
                                        <input type="hidden" name="_method" value="DELETE">
                                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                        <input type="submit" class="btn btn-xs btn-danger" value="{{ trans('global.delete') }}">
                                    </form>
                                @endcan

                            </td>

                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>



@endsection
@section('scripts')
@parent
<script>
    $(function () {
  let dtButtons = $.extend(true, [], $.fn.dataTable.defaults.buttons)
@can('contact_information_delete')
  let deleteButtonTrans = '{{ trans('global.datatables.delete') }}'
  let deleteButton = {
    text: deleteButtonTrans,
    url: "{{ route('admin.contact-informations.massDestroy') }}",
    className: 'btn-danger',
    action: function (e, dt, node, config) {
      var ids = $.map(dt.rows({ selected: true }).nodes(), function (entry) {
          return $(entry).data('entry-id')
      });

      if (ids.length === 0) {
        alert('{{ trans('global.datatables.zero_selected') }}')

        return
      }

      if (confirm('{{ trans('global.areYouSure') }}')) {
        $.ajax({
          headers: {'x-csrf-token': _token},
          method: 'POST',
          url: config.url,
          data: { ids: ids, _method: 'DELETE' }})
          .done(function () { location.reload() })
      }
    }
  }
  dtButtons.push(deleteButton)
@endcan

  $.extend(true, $.fn.dataTable.defaults, {
    orderCellsTop: true,
    order: [[ 1, 'asc' ]],
    pageLength: 100,
  });
  let table = $('.datatable-ContactInformation:not(.ajaxTable)').DataTable({ buttons: dtButtons })
  $('a[data-toggle="tab"]').on('shown.bs.tab click', function(e){
      $($.fn.dataTable.tables(true)).DataTable()
          .columns.adjust();
  });

})

</script>
@endsection
