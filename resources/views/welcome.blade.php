@include('head')
@include('nav')



<!--Container-->


<div class="bg-gray-800 text-gray-100 rounded-lg">
    <div class="px-4 py-16 mx-auto max-w-7xl sm:px-6 lg:px-8">
        <div class="max-w-3xl mx-auto text-center">
            <h2 class="text-3xl font-extrabold sm:text-4xl">Aplicación en Laravel</h2>
            <p class="mt-4 text-lg text-gray-400">Algunas de las tecnologías usadas en este proyectyo personal son las
                siguientes:
            </p>
        </div>
        <dl
            class="mt-12 space-y-10 sm:space-y-0 sm:grid sm:grid-cols-2 sm:gap-x-6 sm:gap-y-12 lg:grid-cols-4 lg:gap-x-8">
            <div class="flex">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor"
                    aria-hidden="true" class="flex-shrink-0 w-6 h-6 text-violet-400">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                </svg>
                <div class="ml-3">
                    <dt class="text-lg font-medium">Laravel</dt>
                    <dd class="mt-2 text-gray-400 text-sm">Version 9 de este framework, para acceder al Dashboard usa login: <p>
                        <h6 class="text-violet-400"> guest@guest.com <p>password </h6>
                        <p>
                            No todas las funcionalidades estan disponibles como invitado.
                        <div class="items-center flex-shrink-0  lg:flex">
                            <a href="/admin/login"
                                class="mt-3 self-center text-md bg-violet-500 hover:bg-violet-700 text-gray-100 font-bold py-2 px-4 border border-violet-700 rounded">Guest</a>
                        </div>
                    </dd>
                </div>
            </div>
            <div class="flex">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor"
                    aria-hidden="true" class="flex-shrink-0 w-6 h-6 text-violet-400">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                </svg>
                <div class="ml-3">
                    <dt class="text-lg font-medium">Filaments</dt>
                    <dd class="mt-2 text-gray-400 text-sm">Plug in para el Dashboard, formacion de tablas y la creación y
                        edicion de las mismas y el plugin TIMEX</dd>
                </div>
            </div>
            <div class="flex">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor"
                    aria-hidden="true" class="flex-shrink-0 w-6 h-6 text-violet-400">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                </svg>
                <div class="ml-3">
                    <dt class="text-lg font-medium">Tailwind</dt>
                    <dd class="mt-2 text-gray-400 text-sm">Usado en el frontend junto a los componentes de Mamba UI,
                        tailwindcss/typography y tailwindcss/forms</dd>
                </div>
            </div>
            <div class="flex">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor"
                    aria-hidden="true" class="flex-shrink-0 w-6 h-6 text-violet-400">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                </svg>
                <div class="ml-3">
                    <dt class="text-lg font-medium">MySQL</dt>
                    <dd class="mt-2 text-gray-400 text-sm">La base de datos junto a programas como phpMyAdmin y Database de VS
                        Code</dd>
                </div>
            </div>
            <div class="flex">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor"
                    aria-hidden="true" class="flex-shrink-0 w-6 h-6 text-violet-400">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                </svg>
                <div class="ml-3">
                    <dt class="text-lg font-medium">Spatie laravel-permission</dt>
                    <dd class="mt-2 text-gray-400 text-sm">Usado para la creacion de los usuarios, roles y permisos asi como las
                        Políticas de uso.</dd>
                </div>
            </div>
            <div class="flex">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor"
                    aria-hidden="true" class="flex-shrink-0 w-6 h-6 text-violet-400">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                </svg>
                <div class="ml-3">
                    <dt class="text-lg font-medium">Spatie laravel-media-library-plugin</dt>
                    <dd class="mt-2 text-gray-400 text-sm">Uso este codigo para el almanezamiento de las imagenes asi como
                        creacion de colecciones.</dd>
                </div>
            </div>
            <div class="flex">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor"
                    aria-hidden="true" class="flex-shrink-0 w-6 h-6 text-violet-400">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                </svg>
                <div class="ml-3">
                    <dt class="text-lg font-medium">Faker</dt>
                    <dd class="mt-2 text-gray-400 text-sm">Relleno de la base de datos, usado junto con Factory y Seeder</dd>
                </div>
            </div>
            <div class="flex">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor"
                    aria-hidden="true" class="flex-shrink-0 w-6 h-6 text-violet-400">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                </svg>
                <div class="ml-3">
                    <dt class="text-lg font-medium">Otras utilidades usadas en el proyecto</dt>
                    <dd class="mt-2 text-gray-400 text-sm">XAMPP, phpmyadmin, Visual Studio Code, Mailtrap, FileZilla, Composer,
                        Node.js, entre otras.</dd>
                </div>
            </div>
        </dl>
    </div>
</div>


<!-- Final Container-->

@include('footer')