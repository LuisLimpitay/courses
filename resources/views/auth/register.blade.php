<!--

    Vista de registro

-->
<!DOCTYPE html>
<html lang="es">

<head> 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Primary Meta Tags -->
<title>Registrarse</title>
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
    <main>

        <!-- Section -->
        <section class="d-flex align-items-center my-5 mt-lg-6 mb-lg-5">
            <div class="container">
                <div class="row justify-content-center form-bg-image" data-background-lg="../../assets/img/illustrations/signin.svg">
                    <div class="col-12 d-flex align-items-center justify-content-center">
                        <div class="mb-4 mb-lg-0 bg-white shadow border rounded border-light p-4 p-lg-5 w-100 fmxw-500">
                            <div class="text-center text-md-center mb-4 mt-md-0">
                                <img src="{{url('images/logoPlatzi.png')}}" alt="logo">
                            </div>
                            <div class="text-center text-md-center mb-4 mt-md-0">
                                <h1 class="mb-0 h3">Registrarse</h1>
                            </div>
                            <form action="{{route('register')}}" method="POST">
                                @csrf
                                <!-- Form -->

                                <div class="form-group mb-4">
                                    <label for="email">Nombre</label>
                                    <div class="input-group">
                                        <span class="input-group-text" id="basic-addon3"><span class="fas fa-user"></span></span>
                                        <input type="text" class="form-control" placeholder="Alex" name="name" id="email" autofocus required>
                                    </div>  
                                </div>

                                <div class="form-group mb-4">
                                    <label for="email">Correo</label>
                                    <div class="input-group">
                                        <span class="input-group-text" id="basic-addon3"><span class="fas fa-envelope"></span></span>
                                        <input type="email" class="form-control" placeholder="ejemplo@gmail.com" name="email" id="email" autofocus required>
                                    </div>  
                                </div>
                                <!-- End of Form -->
                                <div class="form-group">
                                    <!-- Form -->
                                    <div class="form-group mb-4">
                                        <label for="password">Contraseña</label>
                                        <div class="input-group">
                                            <span class="input-group-text" id="basic-addon4"><span class="fas fa-unlock-alt"></span></span>
                                            <input type="password" placeholder="contraseña" name="password" class="form-control" id="password" required>
                                        </div>  
                                    </div>
                                    <!-- End of Form -->
                                    <!-- Form -->
                                    <div class="form-group mb-4">
                                        <label for="confirm_password">Repetir contraseña</label>
                                        <div class="input-group">
                                            <span class="input-group-text" id="basic-addon5"><span class="fas fa-unlock-alt"></span></span>
                                            <input type="password" placeholder="Confirmar contraseña" name="password_confirmation" class="form-control" id="confirm_password" required>
                                        </div>  
                                    </div>
                                    <!-- End of Form -->
                                    <div class="form-check mb-4">
                                        <input class="form-check-input" type="checkbox" value="" id="terms" name="terms" required>
                                        <label class="form-check-label" for="terms">
                                            Yo acepto los  <a href="#">términos de uso</a>
                                        </label>
                                    </div>
                                </div>
                                <div class="d-grid">
                                    <button type="submit" class="btn btn-primary">Registrarse</button>
                                </div>
                            </form>
                            
                        
                            <div class="d-flex justify-content-center align-items-center mt-4">
                                <span class="fw-normal">
                                    ¿Ya tienes una cuenta?
                                    <a href="{{route('login')}}" class="fw-bold">Inicia sesión</a>
                                </span>
                            </div>
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
