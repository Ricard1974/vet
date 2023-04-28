@include('head')
@include('nav')




<!--Container-->
{{-- @foreach ($posts as $post ) --}}

{{-- <h1>{{ $post->category->name}}</h1>
    
@endforeach --}}


@foreach ($posts as $post)
<div >

    <div class="container max-w-4xl px-10 py-6 mx-auto rounded-md shadow-sm bg-gray-800 mt-2 text-gray-100">
        <div class="flex items-center justify-between">
            <span class="text-sm dark:text-gray-400">{{ $post->created_at->since() }}</span>
            {{-- <a rel="noopener noreferrer" href="#"
                class="px-2 py-1 font-bold rounded dark:bg-violet-400 dark:text-gray-900">#</a> --}}
        </div>
        <div class="mt-3">
            <h1 class="text-2xl font-bold">{{ $post->title }}</h1>
            <p class="mt-2">{{ $post->content }}</p>
        </div>
        <div class="flex items-center justify-between mt-4">
            {{-- <a rel="noopener noreferrer" href="#" class="hover:underline dark:text-violet-400">#</a> --}}
            <div>
                <p class="flex items-center">
                        
                    <span class="dark:text-gray-400 text-sm"> {{ $post->category->name }}</span>
                    {{-- <span class="hover:underline dark:text-gray-400"> {{ $post->tags->name }}</span> --}}
                </p>
            </div>
        </div>
    </div>
</div>

@endforeach


@include('footer')

{{-- {{ dd($post) }} --}}
{{-- {{ dd($category) }} --}}