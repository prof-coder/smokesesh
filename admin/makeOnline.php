<?php
	ob_start();
	require_once("../dbase.php"); 
	echo $model =  $_GET['model'];
	$updatedQuery = "UPDATE chatmodels SET status='online' where id='$model'";
	$updateQuery2 = "UPDATE chatmodels SET forcedOnline='1' where id='$model'";
	$lum  = mysql_query($updatedQuery) or die(mysql_error()) ; 
	mysql_query($updateQuery2); 
	if($lum) 
	{
		echo "OK";
	}
	header("location:index.php");



?>