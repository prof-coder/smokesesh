<?php if (!isset($_COOKIE["id"]) || $_COOKIE['usertype']!="chatmodels" )
{

header("location: ../../login.php");

} else{

include("../../dbase.php");


$result=mysql_query("SELECT user from $_COOKIE[usertype] WHERE id='$_COOKIE[id]' LIMIT 1");



	while($row = mysql_fetch_array($result)) 

	{	$username=$row['user'];	}

}

mysql_free_result($result);




echo $username;

?>



<form enctype="multipart/form-data" action="upload.php" method="POST">
Please choose a file: <input name="uploaded" type="file" /><br />
<input type="submit" value="Upload" />
</form> 

