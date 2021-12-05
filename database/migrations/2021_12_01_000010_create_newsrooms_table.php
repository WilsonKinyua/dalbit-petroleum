<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateNewsroomsTable extends Migration
{
    public function up()
    {
        Schema::create('newsrooms', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->longText('title');
            $table->string('location')->nullable();
            $table->longText('description');
            $table->timestamps();
            $table->softDeletes();
        });
    }
}
