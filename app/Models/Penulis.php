<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Penulis extends Model
{
    use HasFactory;

    protected $table = 'penulis';
    protected $primaryKey = 'penulis_id';

    protected $fillable = [
        'image_path',
        'judul',
        'deskripsi',
        'id_penulis',
        'created_at',
    ];
}
