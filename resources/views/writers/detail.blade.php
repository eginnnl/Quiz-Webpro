@extends('layout.header')

@section('content')

<!-- Penulis Section -->
<section id="penulis" class="penulis section">
    <div class="container mt-5 mb-5">
        <div class="row gy-4 justify-content-center">
            <div class="col-lg-5">
                <div class="images-overlap">
                    <img src="{{ asset($penulis->foto_profil_path) }}" alt="Image" class="img-fluid rounded-circle profile-pic">
                </div>
                <h2 class="content-title">{{ $penulis->nama }}</h2>
                <p class="lead">{{ $penulis->spesialis }}</p>
            </div>
        </div>
    </div>
</section>

<!-- Artikel Section -->
<section id="artikel" class="artikel section light-background">
    <div class="container">
        <div class="row gy-4">
            @foreach($artikel as $item)
                <div class="col-md-6 col-lg-4">
                    <div class="post-entry" data-aos="fade-up" data-aos-delay="100">
                        <a href="{{ route('detailArtikel', $item->artikel_id) }}" class="thumb d-block">
                            <img src="{{ asset($item->image_path) }}" alt="Image" class="img-fluid rounded">
                        </a>
                        <div class="post-content">
                            <div class="meta">
                                <a href="#" class="cat">{{ $item->kategori }}</a> •
                                <span class="date">{{ $item->created_at->format('F d, Y') }}</span>
                            </div>
                            <h3><a href="{{ route('detailArtikel', $item->artikel_id) }}">{{ $item->judul }}</a></h3>
                            <p>{{ \Illuminate\Support\Str::limit($item->deskripsi, 20, '... read more') }}</p>
                            <div class="d-flex author align-items-center">
                                <div class="pic">
                                    <img src="{{ asset($item->penulis->foto_profil_path) }}" alt="Image" class="img-fluid rounded-circle">
                                </div>
                                <div class="author-name">
                                    <strong class="d-block">{{ $item->penulis->nama }}</strong>
                                    <span>{{ $item->penulis->spesialis }}</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</section>

<style>
    .profile-pic {
        width: 100px; /* Atur lebar sesuai kebutuhan */
        height: 100px; /* Atur tinggi sesuai kebutuhan */
        object-fit: cover; /* Agar gambar tetap proporsional */
    }
    .pic img {
        width: 50px; /* Atur lebar sesuai kebutuhan */
        height: 50px; /* Atur tinggi sesuai kebutuhan */
        object-fit: cover; /* Agar gambar tetap proporsional */
    }
</style>

@endsection
