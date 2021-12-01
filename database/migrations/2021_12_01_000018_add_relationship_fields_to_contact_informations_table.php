<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddRelationshipFieldsToContactInformationsTable extends Migration
{
    public function up()
    {
        Schema::table('contact_informations', function (Blueprint $table) {
            $table->unsignedBigInteger('division_id');
            $table->foreign('division_id', 'division_fk_5473462')->references('id')->on('categories');
            $table->unsignedBigInteger('country_id');
            $table->foreign('country_id', 'country_fk_5473463')->references('id')->on('countries');
        });
    }
}
