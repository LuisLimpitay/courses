<!--

    Vista del login

-->
<!DOCTYPE html>
<html lang="es">

<head> 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Primary Meta Tags -->
<title>Platzi Courses</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="title" content="mo distribuidora - login">
<meta name="author" content="mo">
<meta name="description" content="----">
<link rel="canonical" href="">

<!-- Fontawesome -->
<link type="text/css" href="{{url('vendor/@fortawesome/fontawesome-free/css/all.min.css')}}" rel="stylesheet">

<!-- Sweet Alert -->
<link type="text/css" href="{{url('vendor/sweetalert2/dist/sweetalert2.min.css')}}" rel="stylesheet">

<!-- Notyf -->
<link type="text/css" href="{{url('vendor/notyf/notyf.min.css')}}" rel="stylesheet">

<!-- main -->
<link type="text/css" href="{{url('css/volt.css')}}" rel="stylesheet">



</head>

<body>

    <!-- NOTICE: You can use the _analytics.html partial to include production code specific code & trackers -->
    

    <main>

        <!-- Section -->
        <section class="d-flex align-items-center my-5 mt-lg-6 mb-lg-5">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 d-flex align-items-center justify-content-center">
                        <div class="bg-white shadow border rounded border-light p-4 p-lg-5 w-100 fmxw-500">
                            <div class="text-center text-md-center mb-4 mt-md-0">
                                <img src="{{url('images/logoPlatzi.png')}}" alt="logo">
                            </div>
                            <div class="text-center text-md-center mb-4 mt-md-0">
                                <h1 class="mb-0 h3">Ingresar a la plataforma</h1>
                            </div>
                            <form action="{{route('login')}}" class="mt-4" method="POST">
                                @csrf
                                <!-- Form -->
                                <div class="form-group mb-4">
                                    <label for="email">Correo</label>
                                    <div class="input-group">
                                        <span class="input-group-text" id="basic-addon1"><span class="fas fa-envelope"></span></span>
                                        <input type="email"  name="email" placeholder="ejemplo@gmail.com" id="email" autofocus required 
                                        @error("email")
                                            class = "form-control is-invalid"
                                            @else
                                                class = "form-control"
                                        @enderror
                                        >
                                        @error("email")
                                            <p class="text-danger">El email escrito no pertenece a un usuario registrado</p>
                                        @enderror
                                    </div>  
                                </div>
                                <!-- End of Form -->
                                <div class="form-group">
                                    <!-- Form -->
                                    <div class="form-group mb-4">
                                        <label for="password">Contraseña</label>
                                        <div class="input-group">
                                            <span class="input-group-text" id="basic-addon2"><span class="fas fa-unlock-alt"></span></span>
                                            <input type="password" placeholder="Contraseña" name="password" id="password" required 
                                            @error("password")
                                                class = "form-control is-invalid"
                                            @else
                                                class = "form-control"
                                        @enderror
                                        >
                                        @error("password")
                                            <p class="text-danger">La contraseña es incorrecta</p>
                                        @enderror
                                        </div>  
                                    </div>
                                    <!-- End of Form -->
                                    <div class="d-flex justify-content-between align-items-top mb-4">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="remember" name="remember">
                                            <label class="form-check-label mb-0" for="remember">
                                              Recordarme
                                            </label>
                                        </div>
                                        <div><a href="./forgot-password.html" class="small text-right">¿Olvidaste la contraseña?</a></div>
                                    </div>
                                </div>
                                <div class="d-grid">
                                    <button type="submit" class="btn btn-secondary">Ingresar</button>
                                </div>
                            </form>
        
                        </div>
                    </div>
                </div>
            </div>

        </section>
    </main>


   

    <!-- Core -->
<script src="url('vendor/@popperjs/core/dist/umd/popper.min.js')"></script>
<script src="{{url('vendor/bootstrap/dist/js/bootstrap.min.js')}}"></script>

<!-- Vendor JS -->
<script src="{{url('vendor/onscreen/dist/on-screen.umd.min.js')}}"></script>

<!-- Volt JS -->
<script src="{{url('js/volt.js')}}"></script>

    
</body>

</html>
