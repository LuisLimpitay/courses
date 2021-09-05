
<nav class="navbar navbar-dark navbar-theme-primary px-4 col-12 d-md-none">
    <a class="navbar-brand me-lg-5" href="">
        <img class="navbar-brand-dark" src="{{url('images/logoPlatzi.png')}}" alt="Volt logo" /> <img class="navbar-brand-light" src="{{url('images/logoPlatzi.png')}}" alt="Volt logo" />
    </a>
    <div class="d-flex align-items-center">
        <button class="navbar-toggler d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    </div>
</nav>

        <nav id="sidebarMenu" class="sidebar d-md-block bg-primary text-white collapse" data-simplebar>
  <div class="sidebar-inner px-4 pt-3">
    <div class="user-card d-flex d-md-none align-items-center justify-content-between justify-content-md-center pb-4">
      <div class="d-flex align-items-center">

        <h3 class="text-white"> Courses Platzi</h3>

        {{-- <div class="user-avatar lg-avatar me-4">
          <img src="../../assets/img/team/profile-picture-3.jpg" class="card-img-top rounded-circle border-white"
            alt="Bonnie Green">
        </div> --}}
        {{-- <div class="d-block">
          <h2 class="h6"></h2>
          <a href="../../pages/examples/sign-in.html" class="btn btn-secondary text-dark btn-xs"><span
              class="me-2"><span class="fas fa-sign-out-alt"></span></span>cerrar sesión</a>
        </div> --}}
      </div>
      <div class="collapse-close d-md-none">
        <a href="#sidebarMenu" class="fas fa-times" data-bs-toggle="collapse" data-bs-target="#sidebarMenu"
          aria-controls="sidebarMenu" aria-expanded="true" aria-label="Toggle navigation"></a>
      </div>
    </div>
    <ul class="nav flex-column pt-3 pt-md-0">
     
      <li class="nav-item">
        <a href="{{route('dashboard')}}" class="nav-link nv-color d-flex align-items-center">
          <span class="">
            <img src="{{url('images/logoPlatzi.png')}}" width="100" alt="Logo">
          </span>
        </a>
      </li>
      
      <!--Opciones dependiendo del usuario ingresado-->
        <!-- administrador -->
        @if(Auth::user()->perfil=="administrador") 

          <li class="nav-item active">
            <a href="{{route('usuarios')}}" class="nav-link">
              <span class="sidebar-icon"><span class="fas fa-users"></span></span>
              <span class="sidebar-text">Gestion de usuarios</span>
            </a>
          </li>
        <!------------------->

        @else
          @if(Auth::user()->perfil=="tutor")

          <!--------- Tutor --------->
          <li class="nav-item">
              <a href="" class="nav-link">
                <span class="sidebar-icon"><span class="fas fa-users"></span></span>
                <span class="sidebar-text">Cursos que dicto</span>
              </a>
            </li>
          <!--------------------------->

              @else
                  <!--------- Tutor --------->
                  <li class="nav-item">
                      <a href="" class="nav-link">
                        <span class="sidebar-icon"><span class="fas fa-users"></span></span>
                        <span class="sidebar-text">Mis cursos</span>
                      </a>
                  </li>
                  <!--------------------------->

          @endif
                

        @endif
      <!---------------------------------------------->

    </ul>
  </div>
</nav>