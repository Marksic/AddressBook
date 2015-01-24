<?php
// Naziv fajla: funkcije.php

// Konstante za konekciju na bazu, naknadno treba popuniti
DEFINE("HOST", ""); 
DEFINE("USER", "");
DEFINE("PASS", "");
DEFINE("DB", "");
/////////////////////////

// Konektovanje na bazu
function doDB() {
	global $dbcon;
	$dbcon = mysqli_connect(HOST, USER, PASS, DB);
	if (mysqli_connect_errno()) {
		echo "<p>We could not connect to DB!</p>
		 	  <p>Error msg: ".mysqli_connect_error()."</p>";
	exit();
	}
	mysqli_set_charset($dbcon, "utf-8");
}
////////////////////////

// "Preciscavanje user input-a iz forme"
function clean($dbcon, $param) {
	$cleaned = mysqli_real_escape_string($dbcon, strip_tags(trim($param)));
	return $cleaned;
}
////////////////////////

?>