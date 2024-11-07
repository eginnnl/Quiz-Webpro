@extends('layout.header')

@section('content')

<!-- Stats Section -->
<section id="stats" class="stats section light-background">
    <div class="container">
        <div class="row gy-4 justify-content-center">
            <div class="col-lg-5">
                <div class="images-overlap">
                    <img src="{{ asset($artikel->image_path) }}" alt="Image" class="img-fluid img-1" data-aos="fade-up">
                </div>
            </div>
            <div class="col-lg-4 ps-lg-5">
                <h2 class="content-title">{{ $artikel->judul }}</h2>
                <p class="lead">{{ $artikel->deskripsi }}</p>
                <p class="mb-5">
                    <strong>Kategori:</strong> {{ $artikel->kategori }}<br>
                    <strong>Tanggal Dibuat:</strong> {{ $artikel->created_at->format('F d, Y') }}
                </p>
                <div class="d-flex author align-items-center">
                    <div class="pic">
                        <img src="{{ asset($artikel->penulis->foto_profil_path) }}" alt="Image" class="img-fluid rounded-circle">
                    </div>
                    <div class="author-name">
                        <strong class="d-block">{{ $artikel->penulis->nama }}</strong>
                        <span>{{ $artikel->penulis->spesialis }}</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection


