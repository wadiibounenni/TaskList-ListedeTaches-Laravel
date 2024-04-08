@extends('layouts.app')

@section('title', $task->title)

@section('content')
  <div class="mb-4">
    <a href="{{ route('tasks.index') }}" class="link">← Retourner à la Liste de Tâches!</a>
  </div>

  <p class="mb-4 text-slate-700">{{ $task->description }}</p>

  @if ($task->long_description)
    <p class="mb-4 text-slate-700">{{ $task->long_description }}</p>
  @endif

  <p class="mb-4 text-sm text-slate-500">Crée {{ $task->created_at->diffForHumans() }} • Mise à Jour
    {{ $task->updated_at->diffForHumans() }}</p>

  <p class="mb-4">
    @if ($task->completed)
      <span class="font-medium text-green-500">Completée</span>
    @else
      <span class="font-medium text-red-500">Non Completée</span>
    @endif
  </p>

  <div class="flex gap-2">
    <a href="{{ route('tasks.edit', ['task' => $task]) }}"
      class="btn">Editer</a>

    <form method="POST" action="{{ route('tasks.toggle-complete', ['task' => $task]) }}">
      @csrf
      @method('PUT')
      <button type="submit" class="btn">
        Marquer comme {{ $task->completed ? 'non completée' : 'completée' }}
      </button>
    </form>

    <form action="{{ route('tasks.destroy', ['task' => $task]) }}" method="POST">
      @csrf
      @method('DELETE')
      <button type="submit" class="btn">Supprimer</button>
    </form>
  </div>
@endsection