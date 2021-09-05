<!--

Esta es la vista principal del dashboard
-->
<!DOCTYPE html>
<html lang="es">

<head> 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Primary Meta Tags -->
<title>Courses Platzi {{$titulo ?? ''}}</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="title" content="">
<meta name="author" content="">
<meta name="description" content="Descripción de la empresa...">
<meta name="keywords" content=""/>
<link rel="canonical" href="">
@livewireStyles


<!-- Favicon -->
<link rel="apple-touch-icon" sizes="120x120" href="../../assets/img/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="../../assets/img/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="../../assets/img/favicon/favicon-16x16.png">
<link rel="manifest" href="../../assets/img/favicon/site.webmanifest">
<link rel="mask-icon" href="../../assets/img/favicon/safari-pinned-tab.svg" color="#ffffff">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="theme-color" content="#ffffff">

<!-- Fontawesome -->
<link type="text/css" href="{{url('vendor/@fortawesome/fontawesome-free/css/all.min.css')}}" rel="stylesheet">

<!-- Sweet Alert -->
<link type="text/css" href="{{url('vendor/sweetalert2/dist/sweetalert2.min.css')}}" rel="stylesheet">

<!-- Notyf -->
<link type="text/css" href="{{url('vendor/notyf/notyf.min.css')}}" rel="stylesheet">

<!-- Volt app -->
<link type="text/css" href="{{url('css/volt.css')}}" rel="stylesheet">



</head>

<body>

    {{$sidebar ?? ''}}
    
        <main class="content">
            
            {{$slot}}

        </main>
        

 
    <!-- Core -->
<script src="{{url('vendor/@popperjs/core/dist/umd/popper.min.js')}}"></script>
<script src="{{url('vendor/bootstrap/dist/js/bootstrap.min.js')}}"></script>

<!-- Vendor JS -->
<script src="{{url('vendor/onscreen/dist/on-screen.umd.min.js')}}"></script>

<!-- Slider -->
<script src="{{url('vendor/nouislider/distribute/nouislider.min.js')}}"></script>

<!-- Smooth scroll -->
<script src="{{url('vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js')}}"></script>

<!-- Charts -->
<script src="{{url('vendor/chartist/dist/chartist.min.js')}}"></script>
<script src="{{url('vendor/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js')}}"></script>

<!-- Datepicker -->
<script src="{{url('vendor/vanillajs-datepicker/dist/js/datepicker.min.js')}}"></script>

<!-- Sweet Alerts 2 -->
<script src="{{url('vendor/sweetalert2/dist/sweetalert2.all.min.js')}}"></script>

<!-- Moment JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.27.0/moment.min.js"></script>

<!-- Vanilla JS Datepicker -->
<script src="{{url('vendor/vanillajs-datepicker/dist/js/datepicker.min.js')}}"></script>

<!-- Notyf -->
<script src="{{url('vendor/notyf/notyf.min.js')}}"></script>

<!-- Simplebar -->
<script src="{{url('vendor/simplebar/dist/simplebar.min.js')}}"></script>

<!-- Github buttons -->
<script async defer src="https://buttons.github.io/buttons.js"></script>

<!-- Volt JS -->
<script src="{{url('js/volt.js')}}"></script>
@livewireScripts

    
</body>

</html>
