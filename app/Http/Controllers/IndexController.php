<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class IndexController extends Controller
{
    //
    public function index()
    {
        $abouts = \App\AboutUs::all();
        $departments = \App\Department::all();
        $latests = \App\LatestWork::all(); 
        $activities = \App\Activity::all();
        $labs = \App\Lab::all();
        return view("index", ['abouts' => $abouts, 'departments' => $departments, 'latests' => $latests, 'activities' => $activities, 'labs' => $labs]);
    }
}
