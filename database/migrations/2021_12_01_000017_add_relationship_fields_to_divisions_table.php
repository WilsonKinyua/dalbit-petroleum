<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddRelationshipFieldsToDivisionsTable extends Migration
{
    public function up()
    {
        Schema::table('divisions', function (Blueprint $table) {
            $table->unsignedBigInteger('division_type_id');
            $table->foreign('division_type_id', 'division_type_fk_5473311')->references('id')->on('categories');
            $table->unsignedBigInteger('country_id');
            $table->foreign('country_id', 'country_fk_5473312')->references('id')->on('countries');
            $table->unsignedBigInteger('contacts_id')->nullable();
            $table->foreign('contacts_id', 'contacts_fk_5473471')->references('id')->on('contact_informations');
        });
    }
}
