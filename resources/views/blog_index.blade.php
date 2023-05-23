@include('head')
@include('nav')




<!--Container-->


<section class="py-6 sm:py-12 dark:bg-gray-800 dark:text-gray-100">
    <div class="container p-6 mx-auto space-y-8">
        <div class="space-y-2 text-center">
            <h2 class="text-5xl font-bold">Posts creados en el Dashboard</h2>
            <p class=" text-2xl dark:text-gray-400">Qualisque erroribus usu at, duo te agam soluta mucius.</p>
        </div>
        <div class="grid grid-cols-1 gap-x-4 gap-y-8 md:grid-cols-2 lg:grid-cols-4">




            @foreach ($posts as $post=>$item)
           <article class="flex flex-col dark:bg-gray-900">
            <a rel="noopener noreferrer" href="{{ route('blog_show', $item->id) }}" aria-label="">
                <img alt="" class="object-cover w-full h-52 dark:bg-gray-500"
                    src="{{ $item->getFirstMediaUrl('post','thumb') }}">
            </a>
            <div class="flex flex-col flex-1 p-6">
                <p class="text-xs tracking-wider uppercase dark:text-violet-400">{{ $item->category->name }}</p>

                @foreach ($posts as $post =>$item)
                {{ dd($item) }}
                <p class="text-xs tracking-wider uppercase dark:text-violet-400">{{ $item->tag->name}}</p>
                    
                @endforeach
                
                
                
                <h3 class="flex-1 py-2 text-lg font-semibold leading-snug">{{ $item->title }}</h3>
                <p class="flex-1 py-2 text-sm font-semibold leading-snug">{{ $item->content }}</p>
                <div class="flex flex-wrap justify-between pt-3 space-x-2 text-xs dark:text-gray-400">
                    <span class="dark:text-violet-400">{{ $item->updated_at->since() }}</span>
        
                </div>
            </div>
        </article>




            @endforeach

        </div>
    </div>
</section>






{{-- <div
    class=" m-3 container max-w-4xl px-10 py-6 mx-auto shadow-md rounded-md bg-gray-800 mt-2 text-gray-100 border-x-4 dark:border-violet-400">
    <div>
        <img src="{{ $item->getFirstMediaUrl('post','thumb')}}" alt="">
    </div>

    <div class="flex items-center justify-between">
        <span class="text-sm dark:text-gray-400">{{ $item->category->name }}</span>

    </div>
    <div class="mt-3">
        <h1 class="text-3xl font-extrabold sm:text-4xl">{{ $item->title }}</h1>
        <p class="mt-2">{{ $item->content }}</p>
        <p></p>
    </div>
    <div class="flex items-center justify-between mt-4">

        <div>
            <p class="flex items-center">
                <span class="dark:text-gray-400 text-sm"> {{ $item->created_at->since() }}</span>

            </p>
        </div>
    </div>
</div> --}}




@include('footer')

{{-- {{ dd($post) }} --}}
{{-- {{ dd($category) }} --}}