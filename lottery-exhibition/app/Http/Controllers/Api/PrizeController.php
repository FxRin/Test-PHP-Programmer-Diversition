<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Prize;
use Illuminate\Http\Request;

class PrizeController extends Controller
{
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
        $lastTwoDigits = rand(0, 99);

        $prize = Prize::create([
            // 'first_prize' => $firstPrize,
            // 'second_prizes' => json_encode($secondPrizes),
            // 'last_two_digits' => $lastTwoDigits
            'first_prize' => $firstPrize,
            'second_prizes' => json_encode($secondPrizes),
            'adjacent_numbers' => json_encode($this->getAdjacentNumbers($firstPrize)),
            'last_two_digits' => $lastTwoDigits
        ]);

        return response()->json($prize);
    }

    public function check(Request $request)
    {
        $participantNumber = $request->input('number');
        $prize = Prize::latest()->first(); // สมมุติว่ามีการเก็บรางวัลล่าสุดไว้

        $result = "No prize";
        if ($participantNumber == $prize->first_prize) {
            $result = "First Prize";
        } elseif (in_array($participantNumber, json_decode($prize->second_prizes))) {
            $result = "Second Prize";
        } elseif (in_array($participantNumber, $this->getAdjacentNumbers($prize->first_prize))) {
            $result = "Adjacent Number Prize";
        } elseif (substr($participantNumber, -2) == str_pad($prize->last_two_digits, 2, "1", STR_PAD_LEFT)) {
            $result = "Last Two Digits Prize";
        }

        return response()->json(['result' => $result]);
    }

    private function getAdjacentNumbers($number)
    {
        $previous = ($number == 0) ? 999 : $number - 1;
        $next = ($number == 999) ? 0 : $number + 1;
        return [$previous, $next];
    }
}
