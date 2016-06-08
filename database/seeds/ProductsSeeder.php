<?php

use Illuminate\Database\Seeder;

class ProductsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('products') -> insert ([
			'cat_id' => '2',
			'name' => 'Krosachi',
			'description' => 'ochen krutye krossovki',
			'price' => '120$',
			'picture' => 'C:\OpenServer\domains\laravel\database\seeds\1380705314_1.jpg'
		]);	
    }
}
