<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDivisionsTable extends Migration
{
    public function up()
    {
        Schema::create('divisions', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->longText('country_description');
            $table->longText('operation_description')->nullable();
            $table->longText('transport_description')->nullable();
            $table->longText('infrastructure_storage_description')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }
}
