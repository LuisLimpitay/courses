<x-dashboard-main>
    <x-sidebar/>
    <x-user-nav/>
    <x-row>

        <h1 class="text-center text-white m-3">Gestión de usuarios</h1>

        <livewire:usuarios.show usuarioid={{$id}} />

    </x-row>
    <x-footer/>

</x-dashboard-main>