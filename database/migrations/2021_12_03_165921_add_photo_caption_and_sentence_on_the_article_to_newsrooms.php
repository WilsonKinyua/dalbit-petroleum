<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddPhotoCaptionAndSentenceOnTheArticleToNewsrooms extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('newsrooms', function (Blueprint $table) {
            $table->string('article_sentence')->nullable();
            $table->string('photo_caption')->nullable();
            $table->string('seo_keywords')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('newsrooms', function (Blueprint $table) {
            $table->string('article_sentence')->nullable();
            $table->string('photo_caption')->nullable();
            $table->string('seo_keywords')->nullable();
        });
    }
}
