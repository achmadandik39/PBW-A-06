<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

        <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Tiket Bioskop</title>

    <!-- Bootstrap core CSS -->
    <link href="{{asset('agency/vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="{{asset('agency/vendor/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700' rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="{{asset('agency/css/agency.css')}}" rel="stylesheet">

  </head>

  <body style="background:#fff !important;" id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="{{ url('/') }}">Tiket Bioskop</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav text-uppercase ml-auto">
            @guest
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    More
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" role="button" href="{{ route('login') }}">{{ __('Login') }}</a>
                        <a class="dropdown-item" href="{{ route('register') }}">{{ __('Register') }}</a>
                    </div>
                </li>
            @else
                <li class="nav-item dropdown">
                    <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                        {{ Auth::user()->name }} <span class="caret"></span>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="/profile/{{Auth::user()->id}}">
                            PROFILE </a>
                        <a class="dropdown-item" href="{{ route('logout') }}"
                           onclick="event.preventDefault();
                                         document.getElementById('logout-form').submit();">
                            {{ __('Logout') }} </a>
                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                            @csrf
                        </form>
                        
                    </div>
                </li>
            @endguest
          </ul>
        </div>
      </div>
    </nav>

    <!-- Header -->
    <header class="masthead">
      <div class="container">
        <div class="intro-text">
          <div style="color:#212121;font-size:30px;">Selamat Datang</div>
          <div style="margin-bottom:100px;color:#212121;">Pemesanan Tiket Bioskop</div>
          @guest
            <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="{{ route('register') }}">Register</a>
          @else
            @if(Auth::user()->admin == 1)
              <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="{{ route('admin_home') }}">Dashboard</a>
            @else
              <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="{{ route('user_home') }}">Cari FIlm</a>
            @endif
          @endguest
        </div>
      </div>
    </header>

    <main>
        @yield('content');
    </main>

    <!-- Footer -->
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <span>PBW-A06</span>
          </div>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="{{asset('agency/vendor/jquery/jquery.min.js')}}"></script>
    <script src="{{asset('agency/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>

    <!-- Plugin JavaScript -->
    <script src="{{asset('agency/vendor/jquery-easing/jquery.easing.min.js')}}"></script>

    <!-- Contact form JavaScript -->
    <script src="{{asset('agency/js/jqBootstrapValidation.js')}}"></script>
    <script src="{{asset('agency/js/contact_me.js')}}"></script>

    <!-- Custom scripts for this template -->
    <script src="{{asset('agency/js/agency.min.js')}}"></script>

  </body>

</html>
