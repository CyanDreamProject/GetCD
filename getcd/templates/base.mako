<!doctype html>  
<head>
<meta charset="UTF-8">
<title>CyanDream Downloads</title>
 <!--[if lt IE 9]>
 <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->

<link rel="stylesheet" type="text/css" href="/css/styles.css"/>
<link type="text/css" href="/css/css3.css" rel="stylesheet" />
<script type="text/javascript" src=" https://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.js"></script>
<script type="text/javascript" src="/js/jquery.pikachoose.js"></script>
<script language="javascript">
			$(document).ready(
				function (){
					$("#pikame").PikaChoose();
				});
		</script>
		


    </head>
    <body>
	
    <!--start container-->
    <div id="container">

    <!--start header-->

    <header>
 
    <!--start logo-->
    <a href="#" id="logo"><img src="/images/logo.png" width="221" height="100" alt="logo"/></a>    

	<!--end logo-->
	
   <!--start menu-->

	<nav>
    <ul>
    <li><a href="javascript:void(0)" onclick="navigate_type('')">all</a></li>
    <li><a href="javascript:void(0)" onclick="navigate_type('stable')">stable</a></li>
	<li><a href="javascript:void(0)" onclick="navigate_type('RC')">release candidate</a></li>
	<li><a href="javascript:void(0)" onclick="navigate_type('nightly')">nightly</a></li>
    <li><a href="javascript:void(0)" onclick="navigate_type('test')">experiments</a></li>

    </ul>
    </nav>
	<!--end menu-->
	

    <!--end header-->
	</header>
   
   <!--start holder-->

   <div class="holder_content1">
    <section class="group4">
		          ${next.body()}

	</section>


       
   <section class="group5">
   <h3>Devices</h3>
   <li><a href="javascript:void(0)" onclick="navigate_device('');"><font color="000000">all</font></a></li>
   % for device in devices:
   <li><a href="javascript:void(0)" onclick="navigate_device('${device}');"><font color="000000">${devicenames[device]}</font></a></li>
   % endfor
   	


	</section>

   
    </div>
    <!--end holder-->

   
   
    </div>
   <!--end container-->
   
   <!--start footer-->
   <footer>
   <div class="container">  
   <div id="FooterTwo"> © 2011 CyanDream project </div>
   <div id="FooterTree"> Valid html5, design and code by <a href="http://www.marijazaric.com">marija zaric - creative simplicity</a>   </div> 
   </div>
   </footer>
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
   <!--end footer-->
<!-- Free template distributed by http://freehtml5templates.com -->   
   </body></html>
