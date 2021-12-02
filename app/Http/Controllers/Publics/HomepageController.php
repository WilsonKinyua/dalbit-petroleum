<?php

namespace App\Http\Controllers\Publics;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Division;
use App\Models\Newsroom;
use App\Models\Slider;
use Illuminate\Http\Request;

class HomepageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $sliders = Slider::with(['media'])->get();
        $divisions = Division::with(['division_type', 'country', 'contacts', 'media'])->get();
        $newsrooms = Newsroom::with(['media'])->limit(4)->get();
        return view('public.index', compact('sliders', 'divisions', 'newsrooms'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    // single division using slug
    public function division($slug)
    {
        $division = Division::where('slug', $slug)->with(['division_type', 'country', 'contacts', 'media'])->first();
        return view('public.division', compact('division'));
    }

    // affiliates
    public function dalbitAffiliates()
    {
        $divisions = Division::where('division_type_id', 1)->with(['division_type', 'country', 'contacts', 'media'])->get();
        return view('public.dalbit-affiliates', compact('divisions'));
    }
}
