<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSocialResponsibilitiesTable extends Migration
{
    public function up()
    {
        Schema::create('social_responsibilities', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('title');
            $table->longText('description');
            $table->timestamps();
            $table->softDeletes();
        });
    }
}
