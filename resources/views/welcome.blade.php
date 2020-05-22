@extends('layouts.landing')

@section('content')

<div class="bg-light" id="portfolio">
  <div class="container">
  <div class="intro-text">
  <div style="color:#212121;font-size:30px;">Film Sedang Tayang</div>
  </div>
    <div class="row">
        @foreach($film as $listFilm) 
          <div class="col-md-4 col-sm-6 portfolio-item">
              <img class="img-fluid img-thumbnail rounded" src="{{asset('upload/images/'.$listFilm->image) }}" alt="" style="width: 100%; height: 200px;">
            <div class="portfolio-caption">
              <h4>{{($listFilm->nama_film)}}</h4>
              <br>
            </div>
          </div>
        @endforeach
    </div>
  </div>
</div>

@endsection

