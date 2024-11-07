<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Artikel;
use App\Models\Penulis;

class HomeController extends Controller
{
    public function getArtikel(){
        $artikel = Artikel::with('penulis')->orderBy('created_at', 'desc')->take(3)->get();
        return view('home.index', compact('artikel'));
    }

    public function toAboutUs(){
        return view('about.index');
    }

    public function detailArtikel($id){
        $artikel = Artikel::with('penulis')->findOrFail($id);
        return view('home.detail', compact('artikel'));
    }

    public function getPenulis(){
        $penulis = Penulis::all();
        return view('writers.index', compact('penulis'));
    }

    public function getArtikelByKategoriIM(){
        $artikel = Artikel::with('penulis')->where('kategori', 'interaktif multimedia')->orderBy('created_at', 'desc')->get();
        return view('category.interaktif_multimedia', compact('artikel'));
    }

    public function getArtikelByKategoriSE(){
        $artikel = Artikel::with('penulis')->where('kategori', 'software engineering')->orderBy('created_at', 'desc')->get();
        return view('category.software_engineering', compact('artikel'));
    }

    public function getAllArtikel(){
        $artikel = Artikel::with('penulis')->orderBy('created_at', 'desc')->paginate(3);
        return view('popular.index', compact('artikel'));
    }

    public function getArtikelByPenulis($id){
        $penulis = Penulis::findOrFail($id);
        $artikel = Artikel::with('penulis')->where('id_penulis', $id)->orderBy('created_at', 'desc')->get();
        return view('writers.detail', compact('artikel', 'penulis'));
    }
}
