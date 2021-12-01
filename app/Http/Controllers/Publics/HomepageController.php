<?php

namespace App\Http\Controllers\Publics;

use App\Http\Controllers\Controller;
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
        return view('public.index', compact('sliders', 'divisions','newsrooms'));
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
}
