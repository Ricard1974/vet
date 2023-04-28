@include('head')
@include('nav')

<div class="w-full flex items-center justify-center my-12 rounded py-2">
<form method="POST" action="{{ route('contact.submit') }}">
    @csrf
        <div class=" bg-gray-900 shadow rounded py-12 lg:px-28 ">
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
                    <textarea tabindex="0" aria-label="leave a message" role="textbox" name="content"
                        class="h-36 text-base leading-none text-gray-900 p-3 focus:oultine-none focus:border-indigo-700 mt-4 bg-gray-100 border rounded border-gray-200 placeholder-gray-100 resize-none"></textarea>
                </div>
            </div>
            <div class="flex items-center justify-center w-full">
                <button
                    class="mt-3 self-center px-5 py-2 font-semibold rounded dark:bg-violet-400 dark:text-gray-900">Enviar</button>
            </div>
        </div>
    </form>
</div>

@include('footer')