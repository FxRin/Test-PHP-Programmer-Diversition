<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('prizes', function (Blueprint $table) {
            // ทำให้ last_two_digits สามารถเป็น NULL ได้
            $table->integer('last_two_digits')->nullable()->change();

            // หรือคุณสามารถตั้งค่าเริ่มต้น
            // $table->integer('last_two_digits')->default(0)->change();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('prizes', function (Blueprint $table) {
            // กลับไปที่การตั้งค่าก่อนหน้า (ถ้ามี)
            $table->integer('last_two_digits')->nullable(false)->change();
        });
    }
};
