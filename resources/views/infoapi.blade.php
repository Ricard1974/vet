@include('head')
@include('nav')



<section class="dark:bg-gray-800 dark:text-gray-100">
    <div class="container flex flex-col justify-center p-4 mx-auto md:p-8">
        <p class="p-2 text-sm font-medium tracking-wider text-center uppercase">Como Funciona</p>
        <h2 class="mb-12 text-4xl font-bold leading-none text-center sm:text-5xl">Punto final de la API</h2>
        <div class="flex flex-col divide-y sm:px-8 lg:px-12 xl:px-32 divide-gray-700">
            <details>
                <summary class="py-2 outline-none cursor-pointer focus:underline">Api de los Post</summary>
                <div class="px-4 pb-4">
                    <p>ricardev.es/api/post</p>
                    <p>Vas a tener como respuesta un JSON, estos datos han sido creados con Faker </p>
                    <p>
                        <img class="p-3" width="800" src="{{url('/img/json_post.png')}}" alt="Resultado Json">
                    </p>

                </div>
            </details>
            <details>
                <summary class="py-2 outline-none cursor-pointer focus:underline">Api de Proveedores</summary>
                <div class="px-4 pb-4">
                    <p>En proceso</p>
                </div>
            </details>
            <details>
                <summary class="py-2 outline-none cursor-pointer focus:underline">Api de Propietarios
                </summary>
                <div class="px-4 pb-4 space-y-2">
                    <p>En proceso</p>

                </div>
            </details>
        </div>
    </div>
</section>


@include('footer')