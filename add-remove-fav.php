<? 
if (isset($_COOKIE["usertype"])){
	
	include("dbase.php");

	include("settings.php");
	
	$modelUser =  $_GET['user']; 
		$memberId =  $_COOKIE['id'];
	
		$query = "SELECT * FROM chatusers where id='$memberId'";
		$result = mysql_query($query) or die(mysql_error()); 
		$memberName = mysql_result($result,0,'user'); 
		$date = date('Y-m-d:h:m:s');
		$ok = $_GET['ok'];
		
		
		$chkQuery = "SELECT * FROM favorites where member='$memberName' AND model = '$modelUser'"; 
		$counterQ = mysql_query($chkQuery) or die ( mysql_error()); 
		$numQ = mysql_num_rows($counterQ) ; 
		
		if($numQ > 0 ) 
		{
			mysql_query("DELETE from favorites WHERE model='$modelUser' AND member='$memberName' LIMIT 1");
			echo 'removed';
			exit();
		}
		else
		{
			$insertedQuery = "INSERT into favorites values ('$memberName','$modelUser','$date')";
			$val= mysql_query($insertedQuery); 
			echo 'added';
			exit();
		}	

} 
 ?>       