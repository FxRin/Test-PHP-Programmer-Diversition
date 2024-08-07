<?php

namespace App\Http\Controllers;

use App\Models\Prize;
use Illuminate\Http\Request;

class PrizeController extends Controller
{
    public function index()
    {
        $prize = Prize::latest()->first();
        return view('prizes.index', compact('prize'));
    }

    public function draw()
    {
        $firstPrize = rand(0, 999);
        $secondPrizes = [];
        while (count($secondPrizes) < 3) {
            $num = rand(0, 999);
            if ($num !== $firstPrize && !in_array($num, $secondPrizes)) {
                $secondPrizes[] = $num;
            }
        }
        $adjacentNumbers = [
            $firstPrize == 0 ? 999 : $firstPrize - 1,
            $firstPrize == 999 ? 0 : $firstPrize + 1
        ];
        $lastTwoDigits = rand(0, 99);

        $prize = Prize::create([
            'first_prize' => $firstPrize,
            'second_prizes' => json_encode($secondPrizes),
            'adjacent_numbers' => json_encode($adjacentNumbers),
            'last_two_digits' => $lastTwoDigits
        ]);

        return redirect()->route('prizes.index');
    }
    
}
