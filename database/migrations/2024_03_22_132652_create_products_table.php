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
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('kode_barang');
            $table->string('nama_komponen');
            $table->string('gambar')->nullable();
            $table->string('satuan');
            $table->integer('jumlah');
            $table->string('lokasi_simpan');
            $table->integer('stok_min');
            $table->integer('stok_max');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
