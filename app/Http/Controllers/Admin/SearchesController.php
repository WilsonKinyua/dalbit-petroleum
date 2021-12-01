<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\MassDestroySearchRequest;
use App\Models\Search;
use Gate;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class SearchesController extends Controller
{
    public function index()
    {
        abort_if(Gate::denies('search_access'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $searches = Search::all();

        return view('admin.searches.index', compact('searches'));
    }

    public function destroy(Search $search)
    {
        abort_if(Gate::denies('search_delete'), Response::HTTP_FORBIDDEN, '403 Forbidden');

        $search->delete();

        return back();
    }

    public function massDestroy(MassDestroySearchRequest $request)
    {
        Search::whereIn('id', request('ids'))->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }
}
