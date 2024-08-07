<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Prize extends Model
{
    use HasFactory;
    
    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'first_prize',
        'second_prizes',
        'adjacent_numbers',
        'last_two_digits', // เพิ่มฟิลด์นี้
        // เพิ่มฟิลด์อื่นๆ ที่ต้องการใช้งาน mass assignment เช่น
        // 'second_prize', 'third_prize', 'near_prize', 'last_two_digit_prize'
    ];
}
