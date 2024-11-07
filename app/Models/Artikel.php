<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Artikel extends Model
{
    use HasFactory;

    protected $table = 'artikel';
    protected $primaryKey = 'artikel_id';

    protected $fillable = [
        'image_path',
        'judul',
        'deskripsi',
        'kategori',
        'id_penulis',
        'created_at',
    ];

    public function penulis()
    {
        return $this->belongsTo(Penulis::class, 'id_penulis', 'penulis_id');
    }
}
