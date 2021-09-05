<?php

use Illuminate\Support\Facades\Route;

Route::get('/usuarios', function(){
    return view('usuarios.index');
})->middleware('auth')->middleware('admin')->name('usuarios');

Route::get('/usuarios/{id}', function($id){
    return view('usuarios.show', ['id' => $id]);
})->middleware('auth')->middleware('admin')->name('usuariosShow');