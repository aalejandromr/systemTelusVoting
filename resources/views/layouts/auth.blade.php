<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
    <meta charset="UTF-8">
    <title>{{ $page_title or "AdminLTE Dashboard" }}</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.2 -->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <link href="{{ asset("/adminlte/css/AdminLTE.min.css") }}" rel="stylesheet" type="text/css" />

    <!-- Theme style -->
    <link href="{{ asset("/adminlte/css/skins/skin-blue.css")}}" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
          page. However, you can choose any other skin. Make sure you
          apply the skin class to the body tag so the changes take effect.
    -->
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<header class="main-header">

        <!-- Logo -->
        <a href="/login" class="logo">
                            
                            <!-- hidden-xs hides the username on small devices so only the image appears. -->
                             <b>LOGIN 
                        </a></b>

        <!-- Header Navbar -->
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <!-- Navbar Right Menu -->
            <div class="navbar-custom-menu">
            <a href="/register" class="logo"><b>REGISTER</a></b>
                <ul class="nav navbar-nav">
                    <!-- Messages: style can be found in dropdown.less-->
                
                    <!-- User Account Menu -->
                    <li class="user user-menu">
                        <!-- Menu Toggle Button -->
                        
                    </li>
                </ul>
            </div>
        </nav>
</header>
<body class="skin-blue">
 @yield('auth-content')

 <script
  src="https://code.jquery.com/jquery-3.1.1.min.js"
  integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
  crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <!-- jQuery 2.1.3 -->
    <!-- Bootstrap 3.3.2 JS -->
    <!-- AdminLTE App -->
    <script src="{{ asset ("/adminlte/js/app.min.js") }}" type="text/javascript"></script>
    @yield("custom-scripts")
</body>

