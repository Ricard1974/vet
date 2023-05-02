@include('head')
@include('nav')



{{-- <section class="p-6 dark:text-gray-100">
    <form novalidate=""
        class="container w-full max-w-xl p-8 mx-auto space-y-6 rounded-md shadow dark:bg-gray-900 ng-untouched ng-pristine ng-valid">
        <h2 class="w-full text-3xl font-bold leading-tight">Contact us</h2>
        <div>
            <label for="name" class="block mb-1 ml-1">Name</label>
            <input id="name" type="text" placeholder="Your name" required=""
                class="block w-full p-2 rounded focus:outline-none focus:ring focus:ring-opacity-25 focus:ring-violet-400 dark:bg-gray-800">
        </div>
        <div>
            <label for="email" class="block mb-1 ml-1">Email</label>
            <input id="email" type="email" placeholder="Your email" required=""
                class="block w-full p-2 rounded focus:outline-none focus:ring focus:ring-opacity-25 focus:ring-violet-400 dark:bg-gray-800">
        </div>
        <div>
            <label for="message" class="block mb-1 ml-1">Message</label>
            <textarea id="message" type="text" placeholder="Message..."
                class="block w-full p-2 rounded autoexpand focus:outline-none focus:ring focus:ring-opacity-25 focus:ring-violet-400 dark:bg-gray-800"></textarea>
        </div>
        <div>
            <button type="submit"
                class="w-full px-4 py-2 font-bold rounded shadow focus:outline-none focus:ring hover:ring focus:ring-opacity-50 dark:bg-violet-400 focus:ring-violet-400 hover:ring-violet-400 dark:text-gray-900">Send</button>
        </div>
    </form>
</section> --}}



<section class="py-6 dark:bg-gray-800 dark:text-gray-50">
    <div class="grid max-w-6xl grid-cols-1 px-6 mx-auto lg:px-8 md:grid-cols-2 md:divide-x">
        <div class="py-6 md:py-0 md:px-6">
            <h1 class="text-4xl font-bold">Contactame</h1>
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
                class="self-center px-4 py-2 text-lg rounded focus:ring hover:ring focus:ring-opacity-75 dark:bg-violet-400 dark:text-gray-900 focus:ring-violet-400 hover:ring-violet-400">Enviar</button>
        </form>


    </div>
</section>





{{-- 
<div class="w-full flex items-center justify-center my-12 rounded py-2">
<form method="POST" action="{{ route('contact.submit') }}">
    @csrf
        <div class="bg-gray-900 shadow rounded py-12 lg:px-28 ">
            <p class="md:text-3xl text-xl font-bold leading-7 text-center text-gray-100">Contactame</p>
            <div class="md:flex items-center mt-12">
                <div class="md:w-72 flex flex-col mr-2">
                    <label class="text-base font-semibold leading-none text-gray-100">Nombre</label>
                    <input tabindex="0" arial-label="Please input name" type="text" name="name"
                        class="text-base leading-none text-gray-900 p-3 focus:oultine-none focus:border-indigo-700 mt-4 bg-gray-100 border rounded border-gray-200 placeholder-gray-100"
                        placeholder="Please input  name" />
                </div>
                <div class="md:w-72 flex flex-col ">
                    <label class="text-base font-semibold leading-none text-gray-100">Email</label>
                    <input tabindex="0" arial-label="Please input email address" type="email" name="email"
                        class="text-base leading-none text-gray-900 p-3 focus:oultine-none focus:border-indigo-700 mt-4 bg-gray-100 border rounded border-gray-200 placeholder-gray-100"
                        placeholder="Escribe tu Email" />
                </div>
            </div>

            <div>
                <div class="w-full flex flex-col mt-8">
                    <label class="text-base font-semibold leading-none text-gray-100">Mensaje</label>
                    <textarea tabindex="0" aria-label="Deja un mensaje" role="textbox" name="content"
                        class="h-36 text-base leading-none text-gray-900 p-3 focus:oultine-none focus:border-indigo-700 mt-4 bg-gray-100 border rounded border-gray-200 placeholder-gray-100 resize-none"></textarea>
                </div>
            </div>
            <div class="flex items-center justify-center w-full">
                <button
                    class="mt-3 self-center px-5 py-2 font-semibold rounded dark:bg-violet-400 dark:text-gray-900">Enviar</button>
            </div>
        </div>
    </form>
</div> --}}

@include('footer')