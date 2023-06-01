@include('head')
@include('nav')

<section class="bg-gray-800 text-gray-100">
    <div class="container max-w-6xl p-6 mx-auto space-y-6 sm:space-y-12">

        <div class="p-6 space-y-2 lg:col-span-5 text-center">
            <h3 class="text-2xl font-semibold sm:text-4xl group-hover:underline group-focus:underline">Animales de
                compañia en España</h3>
        </div>

        <div class="grid justify-center grid-cols-1 gap-6 sm:grid-cols-2 lg:grid-cols-3">


            {{-- FOREACH --}}
            @foreach ($animales as $animal=>$item)
            {{-- {{ dd($item) }} --}}
            <a rel="noopener noreferrer" href="{{ route('animal_show', $item->id) }}"
                class="max-w-sm mx-auto group hover:no-underline focus:no-underline bg-gray-900">
                <img role="presentation" class="object-cover w-full rounded-t-lg h-44 bg-gray-500"
                    src="{{ $item->raza->getFirstMediaUrl('raza','file_name') }}">
                <div class="p-4 space-y-2">
                    <h3 class="text-2xl font-semibold group-hover:underline group-focus:underline">{{ $item->nombre }}
                    </h3>
                    <span class="text-xs text-gray-400">{{ $item->created_at->since() }}</span>

                    {{-- <p >{{ $item->tipo->nombre }}</p> --}}
                    <p class="text-base text-violet-400">{{ $item->raza->nombre }}</p>
                    <p class="text-xs text-gray-400">{{ $item->origen }}</p>
                    <p class="text-xs text-gray-400">{{ $item->color }}</p>


                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" class="w-4 h-4">
                        <path fill-rule="evenodd"
                            d="M12.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-2.293-2.293a1 1 0 010-1.414z"
                            clip-rule="evenodd"></path>
                    </svg>
                </div>
            </a>

            @endforeach

            {{-- ENDFOreach --}}

        </div>

    </div>
</section>











@include('footer')