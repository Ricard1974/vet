<body class="bg-gray-800 leading-normal tracking-normal">

    <nav class="flex items-center justify-between flex-wrap bg-gray-800 p-6 fixed w-full z-10 top-0">
        <div class="flex items-center flex-shrink-0 text-white mr-6">
            <a class="text-white no-underline hover:text-white hover:no-underline" href="/">
                <span class="text-3xl pl-4"><i class="em em-cat"></i> Vet 1.2</span>
            </a>
        </div>

        <div class="block lg:hidden">
            <button id="nav-toggle"
                class="flex items-center px-3 py-2 border rounded text-gray-100 border-gray-600 hover:text-white hover:border-white">
                <svg class="fill-current h-3 w-3" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                    <title>Menu</title>
                    <path d="M0 3h20v2H0V3zm0 6h20v2H0V9zm0 6h20v2H0v-2z" />
                </svg>
            </button>
        </div>

        <div class="w-full flex-grow lg:flex lg:items-center lg:w-auto hidden pt-6 lg:pt-0" id="nav-content">
            <ul class="list-reset lg:flex justify-end flex-1 items-center">
                <li class="mr-3">
                    <a class="inline-block text-gray-100 no-underline hover:text-gray-300 hover:text-underline py-2 px-4"
                        href="/">Inicio</a>
                </li>
                <li class="mr-3">
                    <a class="inline-block text-gray-100 no-underline hover:text-gray-300 hover:text-underline py-2 px-4"
                        href="/blog">Blog</a>
                </li>
                <li class="mr-3">
                    <a class="inline-block text-gray-100 no-underline hover:text-gray-300 hover:text-underline py-2 px-4"
                        href="/contact">Contacto</a>
                </li>
                <div class="items-center flex-shrink-0 hidden lg:flex">
                    <a href="/admin/login"
                        class="self-center px-5 py-2 font-semibold rounded dark:bg-violet-400 dark:text-gray-900">Admin</a>
                </div>

            </ul>
        </div>
    </nav>

    <div class="container mx-auto mt-24 px-4">