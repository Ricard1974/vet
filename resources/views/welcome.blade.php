@include('head')
@include('nav')



    <!--Container-->


<div class="dark:bg-gray-800 dark:text-gray-100 rounded-lg">
    <div class="px-4 py-16 mx-auto max-w-7xl sm:px-6 lg:px-8">
        <div class="max-w-3xl mx-auto text-center">
            <h2 class="text-3xl font-extrabold sm:text-4xl">Aplicación en Laravel</h2>
            <p class="mt-4 text-lg dark:text-gray-400">Algunas de las tecnologías usadas en este proyectyo personal son las siguientes:
            </p>
        </div>
        <dl
            class="mt-12 space-y-10 sm:space-y-0 sm:grid sm:grid-cols-2 sm:gap-x-6 sm:gap-y-12 lg:grid-cols-4 lg:gap-x-8">
            <div class="flex">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor"
                    aria-hidden="true" class="flex-shrink-0 w-6 h-6 dark:text-violet-400">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                </svg>
                <div class="ml-3">
                    <dt class="text-lg font-medium">Laravel</dt>
                    <dd class="mt-2 dark:text-gray-400">Version 9 de este framework, para acceder al Dashboard usa login: <p> <h6 class="dark:text-violet-400"> guest@guest.com <p>password </h6><p>
                        No todas las funcionalidades estan disponibles como invitado.
                    </dd>
                </div>
            </div>
            <div class="flex">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor"
                    aria-hidden="true" class="flex-shrink-0 w-6 h-6 dark:text-violet-400">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                </svg>
                <div class="ml-3">
                    <dt class="text-lg font-medium">Filaments</dt>
                    <dd class="mt-2 dark:text-gray-400">Plug in para el Dashboard, formacion de tablas y la creación y edicion de las mismas y el plugin TIMEX</dd>
                </div>
            </div>
            <div class="flex">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor"
                    aria-hidden="true" class="flex-shrink-0 w-6 h-6 dark:text-violet-400">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                </svg>
                <div class="ml-3">
                    <dt class="text-lg font-medium">Tailwind</dt>
                    <dd class="mt-2 dark:text-gray-400">Usado en el frontend junto a los componentes de Mamba UI, tailwindcss/typography y tailwindcss/forms</dd>
                </div>
            </div>
            <div class="flex">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor"
                    aria-hidden="true" class="flex-shrink-0 w-6 h-6 dark:text-violet-400">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                </svg>
                <div class="ml-3">
                    <dt class="text-lg font-medium">MySQL</dt>
                    <dd class="mt-2 dark:text-gray-400">La base de datos junto a programas como phpMyAdmin y Database de VS Code</dd>
                </div>
            </div>
            <div class="flex">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor"
                    aria-hidden="true" class="flex-shrink-0 w-6 h-6 dark:text-violet-400">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                </svg>
                <div class="ml-3">
                    <dt class="text-lg font-medium">Spatie laravel-permission</dt>
                    <dd class="mt-2 dark:text-gray-400">Usado para la creacion de los usuarios, roles y permisos asi como las Políticas de uso.</dd>
                </div>
            </div>
            <div class="flex">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor"
                    aria-hidden="true" class="flex-shrink-0 w-6 h-6 dark:text-violet-400">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                </svg>
                <div class="ml-3">
                    <dt class="text-lg font-medium">Spatie laravel-media-library-plugin</dt>
                    <dd class="mt-2 dark:text-gray-400">Uso este codigo para el almanezamiento de las imagenes asi como creacion de colecciones.</dd>
                </div>
            </div>
            <div class="flex">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor"
                    aria-hidden="true" class="flex-shrink-0 w-6 h-6 dark:text-violet-400">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                </svg>
                <div class="ml-3">
                    <dt class="text-lg font-medium">Faker</dt>
                    <dd class="mt-2 dark:text-gray-400">Relleno de la base de datos, usado junto con Factory y Seeder</dd>
                </div>
            </div>
            <div class="flex">
                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor"
                    aria-hidden="true" class="flex-shrink-0 w-6 h-6 dark:text-violet-400">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
                </svg>
                <div class="ml-3">
                    <dt class="text-lg font-medium">Otras utilidades usadas en el proyecto</dt>
                    <dd class="mt-2 dark:text-gray-400">XAMPP, phpmyadmin, Visual Studio Code, Mailtrap, FileZilla, Composer, Node.js,  entre otras.</dd>
                </div>
            </div>
        </dl>
    </div>
</div>


    <!-- Final Container-->

@include('footer')