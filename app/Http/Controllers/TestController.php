<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use DB;
use App\Product;
class TestController extends Controller
{
    public function getIndex() {
	$cat = DB::table('products') -> where('showhide', 'show') -> paginate();
	dd($cat);
	
}
	public function getSave(){
			$one = new Product;
			$one -> name = 'имя';
			$one -> picture = '';
			$one -> save();
	}
	public function getCreate($id=null){
			Product::insert([
				'name' => $id,
				'picture' => ''
			]);
	}
	public function getAll(){
			$all = Product::all();
				dd ($all);
	}
}
