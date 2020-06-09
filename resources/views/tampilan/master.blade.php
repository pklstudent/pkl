<!doctype html>
<html lang="en">

<head>
	<title>Halaman | Perpus Matematika </title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

	<!--autocomplete-->
	

	<!-- VENDOR CSS -->
	<link rel="stylesheet" href=" {{ asset('public/admin/assets/vendor/bootstrap/css/bootstrap.min.css') }} ">
	<link rel="stylesheet" href=  "{{ asset('public/admin/assets/vendor/font-awesome/css/font-awesome.min.css') }}">
	<link rel="stylesheet" href=  "{{ asset('public/admin/assets/vendor/linearicons/style.css') }}">
	
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="{{ asset('public/admin/assets/css/main.css') }}">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="{{ asset('public/admin/assets/css/demo.css') }}">
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="{{ asset('public/admin/assets/img/apple-icon.png') }}">
	<link rel="icon" type="image/png" sizes="96x96" href="{{ asset('public/admin/assets/img/favicon.png') }}">
	<!--autocomplete-->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
</head>

<body  style="background : url(../admin/assets/img/foto1.jpg); background-size: 100% 100%;">
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->
        @include('tampilan.termasuk._navbar')
		<!-- END NAVBAR -->
		<!-- LEFT SIDEBAR -->
		@include('tampilan.termasuk._sidebar')
		<!-- END LEFT SIDEBAR -->
		<!-- MAIN -->
		@yield('content')
		<!-- END MAIN -->
		<div class="clearfix"></div>
		<footer>
			<div class="container-fluid">
				<p class="copyright">&copy; 2017 <a href="https://www.themeineed.com" target="_blank">Theme I Need</a>. All Rights Reserved.</p>
			</div>
		</footer>
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script src="{{asset('public/js/jquery-3.4.1.js')}}"></script>
	<script src="{{asset('public/admin/assets/vendor/bootstrap/js/bootstrap.min.js')}}"></script>
	<script src="{{asset('public/admin/assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js')}}"></script>
	<script src="{{asset('public/admin/assets/scripts/klorofil-common.js')}}"></script>
	@yield('auto')	
</body>

</html>
