@include('head')
@include('nav')




<!--Container-->


<section class="py-6 sm:py-12 bg-gray-800 text-gray-100">
    <div class="container p-6 mx-auto space-y-8">
        <div class="space-y-2 text-center">
            <h2 class="text-5xl font-bold">Posts creados en el Dashboard</h2>
            <p class=" text-2xl text-gray-400">Qualisque erroribus usu at, duo te agam soluta mucius.</p>
        </div>
        <div class="grid grid-cols-1 gap-x-4 gap-y-8 md:grid-cols-2 lg:grid-cols-4">




            @foreach ($posts as $post=>$item)
           <article class="flex flex-col bg-gray-900">
            <a rel="noopener noreferrer" href="{{ route('blog_show', $item->id) }}" aria-label="">
                <img alt="" class="object-cover w-full h-52 bg-gray-500"
                    src="{{ $item->getFirstMediaUrl('post','thumb') }}">
            </a>
            <div class="flex flex-col flex-1 p-6">
                <p class="text-xs tracking-wider uppercase text-violet-400">{{ $item->category->name }}</p>


                {{-- <p class="text-xs tracking-wider uppercase text-violet-400">{{ $item->tag}}</p> --}}
                    

                
                
                <h3 class="flex-1 py-2 text-lg font-semibold leading-snug">{{ $item->title }}</h3>
                <p class="flex-1 py-2 text-sm leading-snug">{{ $item->content }}</p>
                <div class="flex flex-wrap justify-between pt-3 space-x-2 text-xs text-gray-400">
                    <span class="text-violet-400">{{ $item->updated_at->since() }}</span>
        
                </div>
            </div>
        </article>




            @endforeach

        </div>
    </div>
</section>






@include('footer')

{{-- {{ dd($post) }} --}}
{{-- {{ dd($category) }} --}}