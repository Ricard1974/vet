@include('head')
@include('nav')




<!--Container-->



@foreach ($posts as $post)
<div >

    <div class="container max-w-4xl px-10 py-6 mx-auto rounded-md shadow-sm dark:bg-gray-800 mt-2 dark:text-gray-100">
        <div class="flex items-center justify-between">
            <span class="text-sm dark:text-gray-400">{{ $post->created_at->since() }}</span>
            {{-- <a rel="noopener noreferrer" href="#"
                class="px-2 py-1 font-bold rounded dark:bg-violet-400 dark:text-gray-900">#</a> --}}
        </div>
        <div class="mt-3">
            <a rel="noopener noreferrer" href="#" class="text-2xl font-bold hover:underline">{{ $post->title }}</a>
            <p class="mt-2">{{ $post->content }}</p>
        </div>
        <div class="flex items-center justify-between mt-4">
            {{-- <a rel="noopener noreferrer" href="#" class="hover:underline dark:text-violet-400">#</a> --}}
            <div>
                <a rel="noopener noreferrer" href="#" class="flex items-center">
                        <i class="em em-cat"></i>
                    <span class="hover:underline dark:text-gray-400">{{ $post->category_id }}</span>
                </a>
            </div>
        </div>
    </div>
</div>

@endforeach

{{-- <div class="p-2 text-white">

    <section class=" content-center rounded-lg border-dotted border-gray-100 shadow-md bg-slate-600">
        <div class=" px-5 py-2 sm:px-6 ">
            <div class="text-left">
                <div class="w-full mx-auto m-3">
                    <h1 class="text-6xl"> {{ $post->title }} </h1>
                    <p> {{ $post->content }}</p>
                    <p class="text-xs">{{ $post->created_at->since() }}</p>

                </div>
            </div>
        </div>
    </section>
</div> --}}


<!-- Final Container-->


@include('footer')

{{-- {{ dd($post) }} --}}
{{-- {{ dd($category) }} --}}