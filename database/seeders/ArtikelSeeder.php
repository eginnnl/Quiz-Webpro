<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ArtikelSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i = 1; $i <= 6; $i++) {
            DB::table('artikel')->insert([
                'artikel_id' => $i,
                'image_path' => 'storage/images/image_artikel_' . $i . '.jpeg',
                'judul' => 'lorem ipsum',
                'deskripsi' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                'kategori' => $i % 2 == 0 ? 'Interaktif Multimedia' : 'Software Engineering',
                'id_penulis' => $i <= 3 ? 1 : 2,
                'created_at' => now(),
            ]);
        }
    }
}
