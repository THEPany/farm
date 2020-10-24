@component('mail::message')
# Necesitas aplicar la siguiente acción

La camada para cerdos #{{$childbirth->id}} necesita lo siguiente.

## Aplicar {{ $model->name }}

@component('mail::button', ['url' => route('voyager.childbirths.edit', $childbirth->id)])
Pulsar el boton, para mas detalles
@endcomponent

Gracias,<br>
{{ config('app.name') }}
@endcomponent
