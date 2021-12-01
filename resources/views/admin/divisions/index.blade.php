@extends('layouts.admin')
@section('content')
@can('division_create')
    <div style="margin-bottom: 10px;" class="row">
        <div class="col-lg-12">
            <a class="btn btn-success" href="{{ route('admin.divisions.create') }}">
                {{ trans('global.add') }} {{ trans('cruds.division.title_singular') }}
            </a>
        </div>
    </div>
@endcan
<div class="card">
    <div class="card-header">
        {{ trans('cruds.division.title_singular') }} {{ trans('global.list') }}
    </div>

    <div class="card-body">
        <div class="table-responsive">
            <table class=" table table-bordered table-striped table-hover datatable datatable-Division">
                <thead>
                    <tr>
                        <th width="10">

                        </th>
                        <th>
                            {{ trans('cruds.division.fields.id') }}
                        </th>
                        <th>
                            {{ trans('cruds.division.fields.division_type') }}
                        </th>
                        <th>
                            {{ trans('cruds.division.fields.country') }}
                        </th>
                        <th>
                            {{ trans('cruds.division.fields.country_image') }}
                        </th>
                        <th>
                            {{ trans('cruds.division.fields.operation_image') }}
                        </th>
                        <th>
                            {{ trans('cruds.division.fields.transport_image') }}
                        </th>
                        <th>
                            {{ trans('cruds.division.fields.infrastructure_storage_image') }}
                        </th>
                        <th>
                            {{ trans('cruds.division.fields.contacts') }}
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
                            &nbsp;
                        </th>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <input class="search" type="text" placeholder="{{ trans('global.search') }}">
                        </td>
                        <td>
                            <select class="search">
                                <option value>{{ trans('global.all') }}</option>
                                @foreach($categories as $key => $item)
                                    <option value="{{ $item->title }}">{{ $item->title }}</option>
                                @endforeach
                            </select>
                        </td>
                        <td>
                            <select class="search">
                                <option value>{{ trans('global.all') }}</option>
                                @foreach($countries as $key => $item)
                                    <option value="{{ $item->name }}">{{ $item->name }}</option>
                                @endforeach
                            </select>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                            <select class="search">
                                <option value>{{ trans('global.all') }}</option>
                                @foreach($contact_informations as $key => $item)
                                    <option value="{{ $item->email }}">{{ $item->email }}</option>
                                @endforeach
                            </select>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                </thead>
                <tbody>
                    @foreach($divisions as $key => $division)
                        <tr data-entry-id="{{ $division->id }}">
                            <td>

                            </td>
                            <td>
                                {{ $division->id ?? '' }}
                            </td>
                            <td>
                                {{ $division->division_type->title ?? '' }}
                            </td>
                            <td>
                                {{ $division->country->name ?? '' }}
                            </td>
                            <td>
                                @if($division->country_image)
                                    <a href="{{ $division->country_image->getUrl() }}" target="_blank" style="display: inline-block">
                                        <img src="{{ $division->country_image->getUrl('thumb') }}">
                                    </a>
                                @endif
                            </td>
                            <td>
                                @if($division->operation_image)
                                    <a href="{{ $division->operation_image->getUrl() }}" target="_blank" style="display: inline-block">
                                        <img src="{{ $division->operation_image->getUrl('thumb') }}">
                                    </a>
                                @endif
                            </td>
                            <td>
                                @if($division->transport_image)
                                    <a href="{{ $division->transport_image->getUrl() }}" target="_blank" style="display: inline-block">
                                        <img src="{{ $division->transport_image->getUrl('thumb') }}">
                                    </a>
                                @endif
                            </td>
                            <td>
                                @if($division->infrastructure_storage_image)
                                    <a href="{{ $division->infrastructure_storage_image->getUrl() }}" target="_blank" style="display: inline-block">
                                        <img src="{{ $division->infrastructure_storage_image->getUrl('thumb') }}">
                                    </a>
                                @endif
                            </td>
                            <td>
                                {{ $division->contacts->email ?? '' }}
                            </td>
                            <td>
                                {{ $division->contacts->location ?? '' }}
                            </td>
                            <td>
                                {{ $division->contacts->telephone ?? '' }}
                            </td>
                            <td>
                                {{ $division->contacts->fax ?? '' }}
                            </td>
                            <td>
                                @can('division_show')
                                    <a class="btn btn-xs btn-primary" href="{{ route('admin.divisions.show', $division->id) }}">
                                        {{ trans('global.view') }}
                                    </a>
                                @endcan

                                @can('division_edit')
                                    <a class="btn btn-xs btn-info" href="{{ route('admin.divisions.edit', $division->id) }}">
                                        {{ trans('global.edit') }}
                                    </a>
                                @endcan

                                @can('division_delete')
                                    <form action="{{ route('admin.divisions.destroy', $division->id) }}" method="POST" onsubmit="return confirm('{{ trans('global.areYouSure') }}');" style="display: inline-block;">
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
@can('division_delete')
  let deleteButtonTrans = '{{ trans('global.datatables.delete') }}'
  let deleteButton = {
    text: deleteButtonTrans,
    url: "{{ route('admin.divisions.massDestroy') }}",
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
    order: [[ 2, 'asc' ]],
    pageLength: 100,
  });
  let table = $('.datatable-Division:not(.ajaxTable)').DataTable({ buttons: dtButtons })
  $('a[data-toggle="tab"]').on('shown.bs.tab click', function(e){
      $($.fn.dataTable.tables(true)).DataTable()
          .columns.adjust();
  });
  
let visibleColumnsIndexes = null;
$('.datatable thead').on('input', '.search', function () {
      let strict = $(this).attr('strict') || false
      let value = strict && this.value ? "^" + this.value + "$" : this.value

      let index = $(this).parent().index()
      if (visibleColumnsIndexes !== null) {
        index = visibleColumnsIndexes[index]
      }

      table
        .column(index)
        .search(value, strict)
        .draw()
  });
table.on('column-visibility.dt', function(e, settings, column, state) {
      visibleColumnsIndexes = []
      table.columns(":visible").every(function(colIdx) {
          visibleColumnsIndexes.push(colIdx);
      });
  })
})

</script>
@endsection