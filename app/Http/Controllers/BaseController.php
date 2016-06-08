<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request; 
use App\Http\Requests;

class BaseController extends Controller
{
public function __construct(){
 
}
    public function getIndex($id='index'){
		return view ('welcome')-> with ('id', $id);
	}
}
