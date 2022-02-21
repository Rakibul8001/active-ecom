<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('invoice_no')->nullable();
            $table->string('product_name')->nullable();
            $table->string('product_code')->nullable();
            $table->string('shop_name')->nullable();
            $table->string('shop_code')->nullable();
            $table->string('product_info')->nullable();
            $table->string('product_quantity')->nullable();
            $table->string('unit_price')->nullable();
            $table->string('total_price')->nullable();
            $table->string('mobile')->nullable();
            $table->string('name')->nullable();
            $table->string('payment_method')->nullable();
            $table->string('delivery_address')->nullable();
            $table->string('city')->nullable();
            $table->string('delivery_charge')->nullable();
            $table->string('order_date')->nullable();
            $table->string('order_time')->nullable();
            $table->string('order_status')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('orders');
    }
}
