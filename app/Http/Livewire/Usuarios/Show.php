<?php

namespace App\Http\Livewire\Usuarios;

use Livewire\Component;
use App\Models\User;


class Show extends Component
{
    public $usuarioid;
    public $usuario;
    public $name;
    public $email;
    public $perfil;

    public function actualizarInfo(){

        /* Se evalua si el usuario ha modificado algún campo
            si no es así solo se manda un mensaje flash  y si es así,
            se crea una instancia del usuario para actualizar sus datos*/

        if(empty($this->name) && empty($this->email)){
            session()->flash('sin_cambios', 'No has hecho ningún cambio');
        }else{
            $usuario = User::find($this->usuarioid); //nueva instancia de usuario

            /* Si se modifican los campos se guardan en la nueva instancia del usuario
                y finalmente se guardan en la base de datos y se actualiza la propiedad usuario */

            if(!empty($this->name)){ 
                $usuario->name = $this->name; 
            }

            if(!empty($this->email)){
                $usuario->name = $this->email;
            }

            $usuario->save();
            $this->usuario = $usuario;
            session()->flash('actualizado', 'La información se actualizó correctamente');

        }
    }

    public function cambiarPerfil(){
        $usuario = User::find($this->usuarioid);
        $usuario->perfil = $this->perfil;
        $usuario->save();
        $this->usuario = $usuario;
    }

    public function mount(){
        $this->usuario = User::where('id', $this->usuarioid)->first();
    }

    public function render()
    {
        return view('livewire.usuarios.show');
    }
}
