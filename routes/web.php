<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PrizeController;
use App\Http\Controllers\ParticipantController;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/', [PrizeController::class, 'index'])->name('prizes.index');
Route::post('/draw', [PrizeController::class, 'draw'])->name('prizes.draw');
Route::post('/check', [ParticipantController::class, 'check'])->name('participants.check');