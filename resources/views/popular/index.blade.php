@extends('layout.header')


@section('content')

    <!-- About Section -->
    <section id="about" class="about section">

        <div class="container mt-5 mb-5">
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
            <div class="d-flex justify-content-center mt-4">
                {{ $artikel->links('pagination::bootstrap-4', ['class' => 'pagination-sm']) }}
            </div>
        </div>

        <style>
            .pic img {
                width: 50px; /* Atur lebar sesuai kebutuhan */
                height: 50px; /* Atur tinggi sesuai kebutuhan */
                object-fit: cover; /* Agar gambar tetap proporsional */
            }
        </style>
      </section><!-- /About Section -->



@endsection
