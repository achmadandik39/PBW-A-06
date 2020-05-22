<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use \App\Film;
use \File;
use \Storage;
use \App\tb_genre_film;

class WelcomeController extends Controller
{
   
    public function show_film()
    {
        $film = \App\Film::paginate(12);
        return view('/welcome',compact('film'));
    }

}
