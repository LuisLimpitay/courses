<div class="col-md-12">

    @if(session()->has('actualizado'))
        <div class="alert alert-success alert-dismissible fade show m-3 mt-0" role="alert">
            <strong>{{session('actualizado')}}</strong>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    @endif

    @if(session()->has('sin_cambios'))
        <div class="alert alert-danger alert-dismissible fade show m-3 mt-0" role="alert">
            <strong>{{session('sin_cambios')}}</strong>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    @endif

   <x-card>
       <x-slot name="card_header">
           <h3 class="text-center">{{$usuario->name}}</h3>
       </x-slot>

       <div class="col-md-6 align-center">
            <div class="m-2 rounded shadow p-0">
                <h2 class="m-0 bg-secondary text-white text-center rounded-top">Información</h2>
            
                <form wire:submit.prevent="actualizarInfo" class="p-2">
                    <div class="form-group m-2 mt-3">
                        <label for="nombre">Nombre</label>
                        <input type="text" wire:model="name" placeholder="{{$usuario->name}}" id="nombre" class="form-control">
                        @error("name")
                            <p class="text-danger">{{$message}}</p>
                        @enderror
                    </div>

                    <div class="form-group m-2 mt-3">
                        <label for="nombre">Email</label>
                        <input type="text" wire:model="email" placeholder="{{$usuario->email}}" id="email" class="form-control">
                        @error("name")
                            <p class="text-danger">{{$message}}</p>
                        @enderror
                    </div>

                    <div class="form-group m-2 mt-3">
                        <label for="nombre">Perfil</label>
                        <div class="d-flex flex-row align-items-baseline">
                            <input type="text" placeholder="{{$usuario->perfil}}" id="perfil" class="form-control" disabled>
                            <div class="m-1">
                                <button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#update-fecha">
                                    <span class="fas fa-redo text-white"></span>
                                </button>
                                <div class="modal fade" id="update-fecha" tabindex="-1" role="dialog" aria-labelledby="update-fecha" aria-hidden="true">
                                    <div class="modal-dialog modal-dialog-centered" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="text-center">Cambiar perfil</h4>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="form-group">
                                                    <label for="perfil">Perfil</label>
                                                    <select wire:model.defer="perfil" id="perfil" class="form-select">
                                                        <option value="estudiante">Estudiante</option>
                                                        <option value="tutor">Tutor</option>
                                                        <option value="administrador">Administrador</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" wire:click="cambiarPerfil">Cambiar</button>
                                                <button type="button" class="btn btn-primary" data-bs-dismiss="modal">cancelar</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="d-grid gap-2 m-2 mt-4">
                        <button class="btn btn-primary">ACTUALIZAR INFORMACIÓN</button>
                    </div>

                </form>
            </div>
       </div>

   </x-card>
</div>
