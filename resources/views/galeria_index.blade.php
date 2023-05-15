@include('head')
@include('nav')




<section class="py-6 dark:bg-gray-800">
        <div class="container flex flex-col justify-center p-4 mx-auto">
            <div class="grid grid-cols-1 gap-4 lg:grid-cols-4 sm:grid-cols-2">

@foreach ($galerias as $galeria=>$item)

                <img class="object-cover rounded-md w-full dark:bg-gray-500 aspect-square"
                    src="{{ $item->getFirstMediaUrl('galeria','thumb') }}" alt="{{ $item->slug }}">
                    
@endforeach
            </div>
        </div>
    </section>

@include('footer')