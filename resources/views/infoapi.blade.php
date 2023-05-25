@include('head')
@include('nav')



<section class="dark:bg-gray-800 dark:text-gray-100">
        <div class="container flex flex-col justify-center px-4 py-8 mx-auto md:p-8">
            <h2 class="text-2xl font-semibold sm:text-4xl text-center">Como Funciona</h2>
            <p class="mt-4 mb-8 dark:text-gray-400 text-center">Punto final de la API</p>
            <div class="space-y-4">
                <details class="w-full border rounded-lg border-dashed">
                    <summary class="px-4 py-6 focus:outline-none focus-visible:ring-violet-400">Api de los Post</summary>
                    <p class="px-4 py-6 pt-0 ml-4 -mt-4 dark:text-gray-400">
                        <a href="{{ url('/api/post') }}">ricardev.es/api/post</a>
                        <br>
                        Vas a tener como respuesta un JSON
                        <br>
                        <img class="p-3" width="800" src="{{url('/img/json_post.png')}}" alt="Resultado Json">
                    </p>
                </details>
                <details class="w-full border rounded-lg border-dashed">
                    <summary class="px-4 py-6 focus:outline-none focus-visible:ring-violet-400">Api de Proveedores</summary>
                    <p class="px-4 py-6 pt-0 ml-4 -mt-4 dark:text-gray-400">
                            <a href="{{ url('/api/proveedor') }}">ricardev.es/api/proveedor</a>
                            <br>
                            Vas a tener como respuesta un JSON
                            <br>
                            <img class="p-3" width="800" src="{{url('/img/json_proveedor.png')}}" alt="Resultado Json">
                        </p>
                </details>
                <details class="w-full border rounded-lg border-dashed">
                    <summary class="px-4 py-6 focus:outline-none focus-visible:ring-violet-400">Api de Propietarios</summary>
                    <p class="px-4 py-6 pt-0 ml-4 -mt-4 dark:text-gray-400">En Proceso</p>
                </details>
            </div>
        </div>
    </section>

@include('footer')