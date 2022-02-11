<?php

namespace App\Http\Controllers\Publics;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreContactRequest;
use App\Models\Category;
use App\Models\Contact;
use App\Models\ContactInformation;
use App\Models\Division;
use App\Models\Newsroom;
use App\Models\Resource;
use App\Models\Search;
use App\Models\Slider;
use App\Models\SocialResponsibility;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

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

    // about us
    public function aboutUs()
    {
        return view('public.about-us');
    }

    // single division using slug
    public function division($slug)
    {
        $division = Division::where('slug', $slug)->with(['division_type', 'country', 'contacts', 'media'])->first();
        if (!$division) {
            abort(404);
        }
        return view('public.division', compact('division'));
    }

    // affiliates
    public function dalbitAffiliates()
    {
        $divisions = Division::where('division_type_id', 1)->with(['division_type', 'country', 'contacts', 'media'])->get();
        return view('public.dalbit-affiliates', compact('divisions'));
    }

    // affiliates
    public function dalbitTrading()
    {
        $divisions = Division::where('division_type_id', 2)->with(['division_type', 'country', 'contacts', 'media'])->get();
        return view('public.dalbit-trading', compact('divisions'));
    }

    // lincensees
    public function dalbitLicensees()
    {
        $divisions = Division::where('division_type_id', 3)->with(['division_type', 'country', 'contacts', 'media'])->get();
        return view('public.dalbit-lincensees', compact('divisions'));
    }

    // social responsibility
    public function socialResponsibility()
    {
        $socialResponsibilities = SocialResponsibility::with(['media'])->get();
        return view('public.social-responsibility', compact('socialResponsibilities'));
    }

    // our pillars
    public function ourPillars($slug)
    {
        $socialResponsibility = SocialResponsibility::where('slug', $slug)->with(['media'])->first();
        // if none found return 404 page
        if (!$socialResponsibility) {
            abort(404);
        }
        return view('public.our-pillars', compact('socialResponsibility'));
    }

    // careers page
    public function Careers()
    {
        return view('public.careers');
    }

    // news
    public function news()
    {
        $newsrooms = Newsroom::with(['media'])->get();
        return view('public.newsroom', compact('newsrooms'));
    }

    // news single
    public function newsSingle($slug)
    {
        $newsroom = Newsroom::where('slug', $slug)->with(['media'])->first();
        // if none found return 404 page
        if (!$newsroom) {
            abort(404);
        }
        return view('public.newsroom-single', compact('newsroom'));
    }

    // contact us
    public function contactUs()
    {
        $dalbitAffiliates = ContactInformation::where('division_id', 1)->with(['division', 'country'])->get();
        $dalbitTrading = ContactInformation::where('division_id', 2)->with(['division', 'country'])->get();
        $dalbitLicensees = ContactInformation::where('division_id', 3)->with(['division', 'country'])->get();
        return view('public.contact-us', compact('dalbitAffiliates', 'dalbitTrading', 'dalbitLicensees'));
    }

    // addContactUsMessage
    public function addContactUsMessage(StoreContactRequest $request)
    {
        $contact_messages = Contact::create($request->all());

        // send email
        $data = [
            'name' => $request->name,
            'email' => $request->email,
            'telephone_number' => $request->telephone_number,
            'message_body' => $request->message,
            'created_at' => $contact_messages->created_at,
        ];

        Mail::send('emails.contact-us', $data, function($message) use ($data) {
            $message->to('info@dalbitpetroleum.com')->subject('New Message From Contact Us Page');
        });

        return redirect()->back()->with('success', 'Message Sent Successfully');
    }

    // ourPolicies
    public function ourPolicies()
    {
        return view('public.our-policies');
    }

    // resources
    public function resources()
    {
        $resources = Resource::with(['media'])->get();
        return view('public.resources', compact('resources'));
    }

    // privacyPolicy
    public function privacyPolicy()
    {
        return view('public.privacy-policy');
    }

    // cookies
    public function cookies()
    {
        return view('public.cookies');
    }

    // search
    public function SearchQuery(Request $request)
    {
        if ($request->search == '') {
            return redirect()->back();
        }
        return redirect()->route('search', ['q' => $request->search]);
    }

    public function searchPage($query)
    {
        if ($query == '') {
            return redirect()->back();
        }
        // dd($q);
        $search_query = Search::create(['query' => $query]);
        $divisions = Division::where('country_description', 'LIKE', '%' . $query . '%')
            ->orWhere('operation_description', 'LIKE', '%' . $query . '%')
            ->orWhere('transport_description', 'LIKE', '%' . $query . '%')
            ->orWhere('infrastructure_storage_description', 'LIKE', '%' . $query . '%')
            ->orWhere('slug', 'LIKE', '%' . $query . '%')
            ->with(['division_type', 'country', 'contacts', 'media'])
            ->get();
        $socialResponsibilities = SocialResponsibility::where('title', 'LIKE', '%' . $query . '%')
            ->orWhere('slug', 'LIKE', '%' . $query . '%')
            ->orWhere('description', 'LIKE', '%' . $query . '%')
            ->with(['media'])->get();
        $newsrooms = Newsroom::where('title', 'LIKE', '%' . $query . '%')
            ->orWhere('article_sentence', 'LIKE', '%' . $query . '%')
            ->orWhere('location', 'LIKE', '%' . $query . '%')
            ->orWhere('seo_keywords', 'LIKE', '%' . $query . '%')
            ->orWhere('slug', 'LIKE', '%' . $query . '%')
            ->orWhere('photo_caption', 'LIKE', '%' . $query . '%')
            ->orWhere('description', 'LIKE', '%' . $query . '%')
            ->with(['media'])->get();
        // $contact_information = ContactInformation::where('name', 'LIKE', '%' . $search . '%')->with(['division', 'country'])->get();
        // $resources = Resource::where('title', 'LIKE', '%' . $search . '%')->with(['media'])->get();
        // return $divisions->toArray();
        // check which has greater count and return that
        // $count = count($divisions) + count($socialResponsibilities);
        return view('public.search', compact('divisions', 'socialResponsibilities', 'query','newsrooms'));
    }
}
