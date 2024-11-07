<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PenulisSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('penulis')->insert([
            'penulis_id' => '1',
            'foto_profil_path' => 'storage/images/image_1.jpeg',
            'nama' => 'anindya nur haniya',
            'spesialis' => 'spesialis mobile developer',
        ]);
        DB::table('penulis')->insert([
            'penulis_id' => '2',
            'foto_profil_path' => 'storage/images/image_2.jpeg',
            'nama' => 'hilman nur fajri',
            'spesialis' => 'spesialis web developer',
        ]);
        DB::table('penulis')->insert([
            'penulis_id' => '3',
            'foto_profil_path' => 'storage/images/image_3.jpeg',
            'nama' => 'kristoper yosua',
            'spesialis' => 'spesialis machine learning',
        ]);

    }
}
