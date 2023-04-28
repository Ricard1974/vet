<x-mail::message>
# Contacto de {{ $name }} - {{ $email }}

{{ $content }}

<x-mail::button :url="'https://ricardev.es'">
Visitanos en 
</x-mail::button>

Gracias,<br>
Atentamente {{ config('app.name') }}
</x-mail::message>
