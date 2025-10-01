<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ProductResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'kode_barang' => $this->kode_barang,
            'nama_komponen' => $this->nama_komponen,
            'gambar' => $this->gambar,
            'satuan' => $this->satuan,
            'jumlah' => $this->jumlah,
            'lokasi_simpan' => $this->lokasi_simpan,
            'stok_min' => $this->stok_min,
            'stok_max' => $this->stok_max,
            'created_at' => $this->created_at->format('d/m/Y'),
            'updated_at' => $this->updated_at->format('d/m/Y'),
        ];
    }
}

//  'kode_barang', 'nama_komponen', 'gambar', 'satuan', 'jumlah', 'lokasi_simpan', 'stok_min', 'stok_max'