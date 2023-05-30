
@include('head')
@include('nav')




<!--Container-->



<div class="p-5 mx-auto sm:p-10 md:p-16 dark:bg-gray-800 dark:text-gray-100">
        <div class="flex flex-col max-w-3xl mx-auto overflow-hidden rounded">
            <img src="{{ $post->getFirstMediaUrl('post') }}" alt="" class="w-full h-60 sm:h-96 dark:bg-gray-500">
            <div
                class="p-6 pb-12 m-4 mx-auto -mt-16 space-y-6 lg:max-w-2xl sm:px-10 sm:mx-12 lg:rounded-md dark:bg-gray-900">
                <div class="space-y-2">
                    <h1 class="inline-block text-2xl font-bold sm:text-3xl">{{ $post->title }}</h1>
                    <p class="text-xs dark:text-gray-400">Creado 
                    {{ $post->updated_at->since() }}
                    </p>
                </div>
                <div class="dark:text-gray-100">
                    <p>{{ $post->content }}</p>
                    <div class=" items-center flex-shrink-1 lg:flex mt-3">
                            <a href="{{route('blog_index') }}" title=""
                                class="inline-flex items-center justify-center w-8 h-8 py-0 border rounded-md shadow">
                                <svg viewBox="0 0 24 24" stroke="currentColor" stroke-width="2" fill="none" stroke-linecap="round"
                                    stroke-linejoin="round" class="w-4">
                                    <polyline points="15 18 9 12 15 6"></polyline>
                                </svg>
                            </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

{{-- {{ $post }} --}}




@include('footer')