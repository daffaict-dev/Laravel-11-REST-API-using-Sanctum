<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'kode_barang', 'nama_komponen', 'gambar', 'satuan', 'jumlah', 'lokasi_simpan', 'stok_min', 'stok_max'
    ];
}
