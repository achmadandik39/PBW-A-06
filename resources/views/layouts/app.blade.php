<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

        <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>PBW A-06</title>

    <!-- Bootstrap core CSS -->
    <link href="{{asset('agency/vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="{{asset('agency/vendor/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="{{ asset('agency/css/agency.css')}}" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('css/select2.min.css')}}">

  </head>

  <body id="page-top" >

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top navbar-shrink" id="mainNav">
      <div class="container">
        @guest
          <a class="navbar-brand js-scroll-trigger" href="{{ url('/admin_home') }}">Tiket Bioskop</a>
        @else
          @if(Auth::user()->admin == 1)
            <a class="navbar-brand js-scroll-trigger" href="{{ url('/admin_home') }}">Tiket Bioskop</a>
          @else
            <a class="navbar-brand js-scroll-trigger" href="{{ url('/user_home') }}">Tiket Bioskop</a>
          @endif
        @endguest
        
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav text-uppercase ml-auto">
            @guest
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
                </li>
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
              <li class="nav-item">
                  {{-- Search --}}
                  <form action="{{ url('user_home/search')}}" method="GET">
                    <div class="input-group input-group-sm" style="width: 250px; margin-top: 5px;">
                      <input type="text" name="q" id="q" class="form-control pull-right" placeholder="Search">
                      <div class="input-group-btn">
                        <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                      </div>
                    </div>
                  </form>
              </li>
              <li class="nav-item dropdown">
                  <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                      {{ Auth::user()->name }} <span class="caret"></span>
                  </a>
                  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <a class="dropdown-item" href="/profile/{{Auth::user()->id}}">
                          PROFILE </a>
                      <a class="dropdown-item" href="/transaksi/checkout/{{Auth::user()->id}}">Checkout</a>
                      <a class="dropdown-item" href="/transaksi/status/{{Auth::user()->id}}">Status</a>
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

    <main>
        @yield('content');
    </main>

    <!-- Footer -->
    <footer  class="navbar-fixed-bottom" style="margin-bottom: 0px; margin-top: auto;">
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <span class="copyright">PBW A-06</span>
          </div>
        </div>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="{{asset('agency/vendor/jquery/jquery.min.js')}}"></script>
    <script src="{{asset('agency/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>

    <!-- Plugin JavaScript -->
    <script src="{{asset('agency/vendor/jquery-easing/jquery.easing.min.js')}}"></script>

    <!-- Autocomplete Search -->
    <script src="{{asset('js/select2.min.js')}}"></script>

    <!-- Contact form JavaScript -->
    <script src="{{asset('agency/js/jqBootstrapValidation.js')}}"></script>
    <script src="{{asset('agency/js/contact_me.js')}}"></script>

    <!-- Custom scripts for this template -->
    <script src="{{asset('agency/js/agency_fix.js')}}"></script>

    {{-- Ajax --}}
    <script src="{{asset('js/ajax.js')}}"></script>

    <!-- Edit Profile -->
    <script src="{{asset('js/editProfil.js')}}"></script>

    <!-- Autocomplete Search -->
    <script src="{{asset('js/select2.min.js')}}"></script>

  </body>

</html>