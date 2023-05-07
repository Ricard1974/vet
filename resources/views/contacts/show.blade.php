@include('head')
@include('nav')

<section class="py-6 dark:bg-gray-800 dark:text-gray-100">
        <div class="container flex flex-col items-center justify-center p-4 mx-auto space-y-8 sm:p-10">
            <h1 class="text-4xl font-bold leading-none text-center sm:text-5xl">Nuestro equipo</h1>
            <p class="max-w-2xl text-center dark:text-gray-400">At a assumenda quas cum earum ut itaque commodi saepe
                rem aspernatur quam natus quis nihil quod, hic explicabo doloribus magnam neque, exercitationem eius
                sunt!</p>
    
            @foreach ($equipo as $equipo=>$item)
            <div class="flex flex-row flex-wrap-reverse justify-center">
                <div class="flex flex-col justify-center m-8 text-center">
                    <img alt="{{ $item->nombre }} {{ $item->apellido }}"
                        class="self-center flex-shrink-0 w-24 h-24 mb-4 bg-center bg-cover rounded-full dark:bg-gray-500"
                        src="{{ $item->getFirstMediaUrl('equipo') }}">
                    <p class="text-xl font-semibold leading-tight">{{ $item->nombre }} {{ $item->apellido }}</p>
                    <p class="dark:text-gray-400">{{ $item->posicion }}</p>
                </div>
                @endforeach
            </div>
        </div>
    </section>

<section class="py-6 dark:bg-gray-800 dark:text-gray-50">
    <div class="grid max-w-6xl grid-cols-1 px-6 mx-auto lg:px-8 md:grid-cols-2 md:divide-x">
        <div class="py-6 md:py-0 md:px-6">
            <h1 class="text-4xl font-bold">Contactanos</h1>
            <p class="pt-2 pb-4">Rellena el formulario para empezar a conversar</p>
            <div class="space-y-4">
                <p class="flex items-center">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor"
                        class="w-5 h-5 mr-2 sm:mr-6">
                        <path fill-rule="evenodd"
                            d="M5.05 4.05a7 7 0 119.9 9.9L10 18.9l-4.95-4.95a7 7 0 010-9.9zM10 11a2 2 0 100-4 2 2 0 000 4z"
                            clip-rule="evenodd"></path>
                    </svg>
                    <span>La dirección</span>
                </p>
                <p class="flex items-center">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor"
                        class="w-5 h-5 mr-2 sm:mr-6">
                        <path
                            d="M2 3a1 1 0 011-1h2.153a1 1 0 01.986.836l.74 4.435a1 1 0 01-.54 1.06l-1.548.773a11.037 11.037 0 006.105 6.105l.774-1.548a1 1 0 011.059-.54l4.435.74a1 1 0 01.836.986V17a1 1 0 01-1 1h-2C7.82 18 2 12.18 2 5V3z">
                        </path>
                    </svg>
                    <span>123456789</span>
                </p>
                <p class="flex items-center">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor"
                        class="w-5 h-5 mr-2 sm:mr-6">
                        <path d="M2.003 5.884L10 9.882l7.997-3.998A2 2 0 0016 4H4a2 2 0 00-1.997 1.884z"></path>
                        <path d="M18 8.118l-8 4-8-4V14a2 2 0 002 2h12a2 2 0 002-2V8.118z"></path>
                    </svg>
                    <span>ricardev@ricardev.es</span>
                </p>
            </div>
        </div>


        <form method="POST" action="{{ route('contact.submit') }}" class="flex flex-col py-6 space-y-6 md:py-0 md:px-6 ">
            @csrf
            <label class="block">
                <span class="mb-1">Nombre</span>
                <input type="text" name="name"  tabindex="0"
                class="block w-full rounded-md focus:ring focus:ring-opacity-75 focus:ring-violet-400 dark:bg-gray-800">
            </label>
            <label class="block">
                <span class="mb-1">Email</span>
                <input type="email" name="email"  tabindex="0"
                    class="block w-full rounded-md focus:ring focus:ring-opacity-75 focus:ring-violet-400 dark:bg-gray-800">
            </label>
            <label class="block">
                <span class="mb-1">Mensaje</span>
                <textarea rows="3" name="content" role="textbox" tabindex="0"
                    class="block w-full rounded-md focus:ring focus:ring-opacity-75 focus:ring-violet-400 dark:bg-gray-800"></textarea>
            </label>
            <button 
                class="self-center px-2 py-2 text-md rounded focus:ring hover:ring focus:ring-opacity-75 dark:bg-violet-400 dark:text-gray-900 focus:ring-violet-400 hover:ring-violet-400">Enviar</button>
        </form>


    </div>
</section>





@include('footer')