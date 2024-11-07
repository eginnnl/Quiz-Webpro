<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [HomeController::class, 'getArtikel'])->name('artikel');

Route::get('/about', [HomeController::class, 'toAboutUs'])->name('about');
Route::get('/penulis', [HomeController::class, 'getPenulis'])->name('penulis');
Route::get('/penulis/{id}', [HomeController::class, 'getArtikelByPenulis'])->name('artikelByPenulis');
Route::get('/artikel/{id}', [HomeController::class, 'detailArtikel'])->name('detailArtikel');
Route::get('/interaktif_multimedia', [HomeController::class, 'getArtikelByKategoriIM'])->name('kategoriIM');
Route::get('/software_engineering', [HomeController::class, 'getArtikelByKategoriSE'])->name('kategoriSE');
Route::get('/popular', [HomeController::class, 'getAllArtikel'])->name('getAllArtikel');


