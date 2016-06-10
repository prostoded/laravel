<?php 
	return array(
		'title' => 'Users',
		'single' => 'user',
		'model' => 'App\User',
		'columns' => array ('id', 'email' => array ('title' => 'E-mail'), 'name' => array ('title' => 'LogIn')),
		'filters' => array ('id', 'name', 'email'),
		'edit_fields' => array ('id', 'name' => array ('title' => 'LogIn'), 'email' => array ('title' => 'E-mail')),
	);