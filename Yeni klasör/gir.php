<?php 
session_start();


if ($_SESSION['tcok']!="tcok") {
	
	header("Location:hakkiimizda.php?yarrayedik");
}



else{

header("Location:index.php?durum=sorunyok");

}

 ?>