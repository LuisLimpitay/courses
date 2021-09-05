<x-dashboard-main>
    <x-sidebar/>
    <x-user-nav/>
    <x-row>

        <h1 class="text-center text-white m-3">Hola {{Auth::user()->name}}, bienvenid@</h1>

        <h3 class="text-center text-white m-3">Esta sería la página de inicio e iría su respectiva información</h3>

        <div class="col-md-4">
            <x-card>
                <x-slot name="card_header">
                    <h4 class="text-center">Card - 1</h4>
                </x-slot>
    
                <p> Card que no hace nada pero se ve perrona.</p>
    
            </x-card>
        </div>

        <div class="col-md-4">
            <x-card>
                <x-slot name="card_header">
                    <h4 class="text-center">Card - 2</h4>
                </x-slot>
    
                <p> Card que no hace nada pero se ve perrona.</p>
    
            </x-card>
        </div>

        <div class="col-md-4">
            <x-card>
                <x-slot name="card_header">
                    <h4 class="text-center">Card - 3</h4>
                </x-slot>
    
                <p> Card que no hace nada pero se ve perrona.</p>
    
            </x-card>
        </div>

        <div class="col-md-6">
            <x-card>
                <x-slot name="card_header">
                    <h4 class="text-center">Card - 4</h4>
                </x-slot>
    
                <p> Card que no hace nada pero se ve perrona.</p>
    
            </x-card>
        </div>

        <div class="col-md-6">
            <x-card>
                <x-slot name="card_header">
                    <h4 class="text-center">Card - 5</h4>
                </x-slot>
    
                <p> Card que no hace nada pero se ve perrona.</p>
    
            </x-card>
        </div>

       

    </x-row>
    <x-footer/>

</x-dashboard-main>