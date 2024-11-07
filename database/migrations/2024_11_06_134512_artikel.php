<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('artikel', function (Blueprint $table) {
            $table->bigIncrements('artikel_id');
            $table->string('image_path')->nullable(false);
            $table->string('judul')->nullable(false);
            $table->text('deskripsi')->nullable(false);
            $table->string('kategori')->nullable(false);
            $table->unsignedBigInteger('id_penulis');
            $table->timestamps();

            $table->foreign('id_penulis')->references('penulis_id')->on('penulis')->onDelete('cascade');






        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('artikel');
    }
};
