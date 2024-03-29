<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddColumnsToPostsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('posts', function (Blueprint $table) {
            $table->string('subtitle')->nullable();
            $table->Text('subbody')->nullable();
            $table->string('cover_image');
            $table->string('logo');
            $table->boolean('disabled')->default(false);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('posts', function (Blueprint $table) {
            $table->dropColumn('subtitle');
            $table->dropColumn('subbody');
            $table->dropColumn('cover_image');
            $table->dropColumn('logo');
            $table->dropColumn('disabled');

        });
    }
}
