@extends('layout.header')


@section('content')


    <!-- Penulis Section -->
    <section id="penulis" class="penulis section">
        <div class="container mt-5 mb-5">
            <div class="row gy-4">
                @foreach($penulis as $item)
                    <div class="col-md-6 col-lg-4">
                        <a href="{{ route('artikelByPenulis', $item->penulis_id) }}">
                            <div class="post-entry text-center" data-aos="fade-up" data-aos-delay="100">
                                <div class="thumb d-block">
                                    <img src="{{ asset($item->foto_profil_path) }}" alt="Image" class="img-fluid rounded-circle profile-pic mx-auto">
                                </div>
                                <div class="post-content mt-3">
                                    <h3 class="font-weight-bold">{{ $item->nama }}</h3>
                                    <p class="text-muted">{{ $item->spesialis }}</p>
                                </div>
                            </div>
                        </a>
                    </div>
                @endforeach
            </div>
        </div>
    </section>

    <style>
        .profile-pic {
            width: 150px; /* Atur lebar sesuai kebutuhan */
            height: 150px; /* Atur tinggi sesuai kebutuhan */
            object-fit: cover; /* Agar gambar tetap proporsional */
        }
        .post-content h3 {
            font-size: 1.5rem; /* Perbesar ukuran font nama */
        }
        .post-content p {
            font-size: 1.2rem; /* Perbesar ukuran font spesialis */
        }
    </style>

@endsection
