<!DOCTYPE HTML>
<!--
	Prologue 1.1 by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>CyanDream downloads</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600" rel="stylesheet" type="text/css" />
		<!--[if lte IE 8]><script src="/static/js/html5shiv.js"></script><![endif]-->
		<script src="http://amfox.eu:86/static/js/jquery.min.js"></script>
		<script src="http://amfox.eu:86/static/js/skel.min.js"></script>
		<script src="http://amfox.eu:86/static/js/skel-panels.min.js"></script>
		<script src="http://amfox.eu:86/static/js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="http://amfox.eu:86/static/css/skel-noscript.css" />
			<link rel="stylesheet" href="http://amfox.eu:86/static/css/style.css" />
			<link rel="stylesheet" href="http://amfox.eu:86/static/css/style-wide.css" />
		</noscript>
		<!--[if lte IE 9]><link rel="stylesheet" href="http://amfox.eu:86/static/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="http://amfox.eu:86/static/css/ie8.css" /><![endif]-->
	</head>
	<body>

		<!-- Header -->
			<div id="header" class="skel-panels-fixed">

				<div class="top">

					<!-- Logo -->
						<div id="logo">
							<h1 id="title">CyanDream project</h1>
							<span class="byline">Downloads</span>
						</div>

					<!-- Nav -->
						<nav id="nav">
    <ul>
    <li><a href="javascript:void(0)" onclick="navigate_type('')">all</a></li>
    <li><a href="javascript:void(0)" onclick="navigate_type('stable')">stable</a></li>
	<li><a href="javascript:void(0)" onclick="navigate_type('RC')">release candidate</a></li>
	<li><a href="javascript:void(0)" onclick="navigate_type('nightly')">nightly</a></li>
    <li><a href="javascript:void(0)" onclick="navigate_type('test')">experiments</a></li>
	<li><a href="#devices" id="devices" class="skel-panels-ignoreHref">Select device</a></li>

    </ul>
						</nav>
						
				</div>
				
				<div class="bottom">

					<!-- Social Icons -->
						<ul class="icons">
							<li><a href="https://twitter.com/cd-jenkins" class="fa fa-twitter solo"><span>Twitter</span></a></li>
							<li><a href="#" class="fa fa-facebook solo"><span>Facebook</span></a></li>
							<li><a href="https://github.com/CyanDreamProject" class="fa fa-github solo"><span>Github</span></a></li>
							<li><a href="#" class="fa fa-dribbble solo"><span>Dribbble</span></a></li>
							<li><a href="#" class="fa fa-envelope solo"><span>Email</span></a></li>
						</ul>
				
				</div>
			
			</div>

		<!-- Main -->
			<div id="main">
			
					<section id="top" class="one">
						<div class="container">

							<img src="/static/images/pic01.jpg" alt="" />

		          ${next.body()}


						</div>
					</section>
					
					<section id="devices" class="three">
						<div class="container">


						    <a href="javascript:void(0)" onclick="navigate_device('');"><font color="000000">all</font></a>
							% for device in devices:
							 - <a href="javascript:void(0)" onclick="navigate_device('${device}');"><font color="000000">${devicenames[device]}</font></a>
   % endfor
							 

						</div>
					</section>
			</div>

		<!-- Footer -->
			<div id="footer">
				
				<!-- Copyright -->
					<div class="copyright">
						<p>&copy; 2014 CyanDream project. All rights reserved.</p>
						<ul class="menu">
							<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
							<li>Images: <a href="http://ineedchemicalx.deviantart.com">Felicia Simion</a></li>
						</ul>
					</div>
				
			</div>

   <script type="text/javascript">
     (function(){
         window.urlParams = {};
         var e,
                 a = /\+/g,  // Regex for replacing addition symbol with a space
                 r = /([^&=]+)=?([^&]*)/g,
                 d = function (s) { return decodeURIComponent(s.replace(a, " ")); },
                 q = window.location.search.substring(1);
         while (e = r.exec(q)) {
             window.urlParams[d(e[1])] = d(e[2]);
         }
     })();

     (function(){
         if (window.urlParams.device) {
             $("li#device_" + window.urlParams.device).addClass('active');
         } else {
             $('li#device_all').addClass('active');
         }
         if (window.urlParams.type) {
             $("li#type_" + window.urlParams.type).addClass('active');
         } else {
             $('li#type_all').addClass('active');
         }
     })(jQuery);

     window.navigate_device = function(device) {
         if (window.urlParams.type) {
             location.href = '/?' + $.param({
                 device: device,
                 type: window.urlParams.type
             });
         } else {
             if (device == "") {
                 location.href = '/';
                 return
             }
             location.href = '/?' + $.param({device: device});
         }
     }

     window.navigate_type = function(type) {
         if (window.urlParams.device) {
             location.href = '/?' + $.param({
                 device: window.urlParams.device,
                 type: type
             });
         } else {
             if (type == "") {
                 location.href = '/';
                 return
             }
             location.href = '/?' + $.param({type: type});
         }
     }
   </script>
	</body>
</html>
