<?php

namespace App\Http\Controllers;

use App\Models\Prize;
use Illuminate\Http\Request;

class ParticipantController extends Controller
{
    public function check(Request $request)
    {
        $number = $request->input('number');
        $prize = Prize::latest()->first();

        $result = "ไม่ถูกรางวัลใด";
        if ($number == $prize->first_prize) {
            $result = "ถูกรางวัลที่ 1";
        } elseif (in_array($number, json_decode($prize->second_prizes))) {
            $result = "ถูกางวัลที่ 2";
        } elseif (in_array($number, json_decode($prize->adjacent_numbers))) {
            $result = "ถูกรางวัลเลขข้างเคียงรางวัลที่ 1";
        } elseif (substr($number, -2) == str_pad($prize->last_two_digits, 2, "0", STR_PAD_LEFT)) {
            $result = "ถูกรางวัลเลขท้าย 2 ตัว";
        }

        return view('participants.result', compact('result'));
    }
}
