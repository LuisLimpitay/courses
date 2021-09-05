<nav class="navbar navbar-top navbar-expand navbar-dashboard navbar-dark ps-0 pe-2 pb-0 m-4 mt-1">
    <div class="container-fluid px-0">
      <div class="d-flex justify-content-end w-100" id="navbarSupportedContent">
        <!-- Navbar links -->
        <ul class="navbar-nav align-items-center">
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle pt-1 px-0" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              <div class="media d-flex align-items-center">
                <img class="user-avatar md-avatar rounded-circle" alt="Image placeholder" src="{{url('images/users/default.png')}}">
                <div class="media-body ms-2 text-dark align-items-center d-none d-lg-block">
                  <span class="mb-0 font-small fw-bold">{{Auth::user()->name}}</span>
                </div>
              </div>
            </a>
            <div class="dropdown-menu dashboard-dropdown dropdown-menu-end mt-2 py-0">
                <a class="dropdown-item rounded-top fw-bold" href="#"><span class="far fa-user-circle"></span>Perfil</a>
                <a class="dropdown-item fw-bold" href="#"><span class="fas fa-cog"></span>configuración</a>
                <a class="dropdown-item fw-bold" href="#"><span class="fas fa-envelope-open-text"></span>Mensajes</a>
                <div role="separator" class="dropdown-divider my-0"></div>
                <div class="d-flex flex-column align-items-center m-3">
                  <form action="{{route('logout')}}" method="POST">
                    @csrf
                      <button class="btn btn-dark btn-sm">
                        <span class="fas fa-sign-out-alt"></span>
                            <span> Cerrar sesión</span>
                      </button>
                  </form>
                </div>
            </div>
          </li>
        </ul>
      </div>
    </div>
</nav>