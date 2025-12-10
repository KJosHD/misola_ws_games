<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    <div class="py-5">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                @foreach ($games as $game)
                <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg my-5">
                    <div class="p-6 text-gray-900 dark:text-gray-100">
                        <div class="flex justify-between">
                            <div class="flex">
                            <img style="width: 300px; padding: 1em 1em 0 0" src={{ Storage::url($game->thumbnail) }}
                            alt={{ $game->title }}>
                            <p style="padding: 1em 0 0 1em">{{$game->description}}</p>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</x-app-layout>
