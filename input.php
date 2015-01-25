<?php
	
// kreiramo funkciju za ispisivanje input kontrola
// sve input kontrole ce imati labelu ,osim kontrole tipa submit
function input($type,$name,$name_label="",$value=""){
	$output="";
	if($type=='submit'){
		$output.= "<input type='$type' name='$name' id='$name' value='$value' />";
	}else {
		$output.="<label for='$name'>$name_label</label>";
		$output.= "<input type='$type' name='$name' id='$name' />";
	}
	return $output;
}


