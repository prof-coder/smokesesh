<head>



<? if (isset($_COOKIE["usertype"])){

	
    //include("_main.header.logged.in.php");	
	
			  	  

	} else {
 
		 
	//include("_main.header.php");		  
			  

	}?>

<?
if(isset($_POST['epc']) && isset($_POST['cpm'])){
include('dbase.php');
include('settings.php');
mysql_query("UPDATE chatmodels SET cpm='$_POST[cpm]',epercentage='$_POST[epc]' WHERE id = '$_POST[id]' LIMIT 1");

}
?>
<?
	
	//$secondsThisMonth=time(i)*60+time(G)*3600+time(j)*86400
	//$secondsAll=time();
		
	include('dbase.php');
	
	
	$result = mysql_query("SELECT * FROM chatmodels WHERE user='$_GET[model]' LIMIT 1");
		while($row = mysql_fetch_array($result)) 
		{
		$tempUser=$row["user"];
		$cpm=$row["cpm"];
		
		
		

		}

	?>
	




	
		


<!DOCTYPE html>
<html>
<head>
<meta name=viewport content="width=device-width, initial-scale=1">









	<title>Video Chat</title>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!--<script src="/socket.io/socket.io.min.js"></script>-->
    <script src="https://cdn.socket.io/socket.io-1.3.4.js"></script>
<script src="/easyrtc/easyrtc.js"></script>
<script src="/js/bootstrap.min.js"></script>
<link href="/css/videochat.css" rel="stylesheet" type="text/css" media="all" />
<link href="/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />

<style type="text/css" media="screen">
	a:link {
	color: #fff;
	text-decoration: none;
}
a:visited {
	color: #fff;
	text-decoration: none;
}
a:hover {
	color: #fff;
	text-decoration: none;
}
a:active {
	color: #666666;
	text-decoration: none;
}
.style2 {font-size: 14px; font-family: Arial, Helvetica, sans-serif;}
.style3 {
	font-weight: normal;
	font-size: 11;
}
a {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 11px;
}
<style type="text/css">

#toggleUsers{
display:none; 
visibilty:hidden;
}

</style>
</head>
<body>


  
  <p>
    <?

include("dbase.php");

include("settings.php");

$result=mysql_query("SELECT user from chatusers WHERE id='$_COOKIE[id]' LIMIT 1");

	while($row = mysql_fetch_array($result)) 

	{	$username=$row['user'];	

	}

$result = mysql_query('SELECT cpm, scpm FROM chatmodels WHERE user="'.$_GET[model].'" LIMIT 1');

         while($row = mysql_fetch_array($result)) 

            {
              $cpm=$row['cpm'];
              $scpm=$row['scpm'];
            }
?>
  
    
    
    <?

  if (isset($_COOKIE['usertype']) && $_COOKIE['usertype']=="chatusers")

  	{	 $result = mysql_query('SELECT cpm FROM chatmodels WHERE user="'.$_GET[model].'" LIMIT 1');

		 while($row = mysql_fetch_array($result)) 

			{$cpm=$row['cpm'];};

		 $result = mysql_query('SELECT id,user,money,freetime,freetimeexpired FROM chatusers WHERE id="'.$_COOKIE[id].'" LIMIT 1');

		 while($row = mysql_fetch_array($result)) 

			{

			$freetime=$row['freetime'];

			$freetimeexpired=$row['freetimeexpired'];

			$sUser=$row['user'];

			$sId=$row['id'];

			$nMoney=$row['money'];

			}

	

		if ($freetime==0 && (time()-$freetimeexpired)>(3600*$freehours)){

		mysql_query("UPDATE chatusers SET freetime='120', freetimeexpired='0' WHERE id='$_COOKIE[id]' LIMIT 1");

		$freetime=110;

		}

		$result=mysql_query("SELECT * from favorites WHERE member='$sUser' AND model='$_GET[model]'");

		if (mysql_num_rows($result)>=1){$nFav=1;}else{$nFav=0;}

			

	}else{

		$sUser="guest";

		$sId="00";

		$nMoney=0;

		$nFav=0;

	}

  ?>
    
    
    <?php
$tempUser=$_GET[model];
?>
    
    <!--js libraries -->
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="/socket.io/socket.io.min.js"></script>
    <script src="/easyrtc/easyrtc.js"></script>
    <script src="/js/bootstrap.min.js"></script>  -->
  </p>




</body>
</html>


<?php
/*chat license*/ 
include('lic.php');
include('liveshow.php');
?>