<?php

namespace App\Http\Livewire\Usuarios;

use Livewire\Component;
use App\Models\User;
use Livewire\WithPagination;
class Index extends Component
{
    use WithPagination;
    public $search = '';
    protected $paginationTheme = 'bootstrap';

    public function eliminarUsuario($id){
        User::destroy($id);
        session()->flash('eliminado', 'Usuario eliminado correctamente');
        return redirect('usuarios');

    }

    public function render()
    {
        return view('livewire.usuarios.index', ['usuarios' => 
        User::where('name', 'like', '%'.$this->search.'%')->paginate(5)]);
    }
}
