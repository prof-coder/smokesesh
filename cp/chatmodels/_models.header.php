<?

include("../../dbase.php");

include("../../settings.php");

$result=mysql_query("SELECT user,freetime,freetimeexpired from chatusers WHERE id='$_COOKIE[id]' LIMIT 1");

	while($row = mysql_fetch_array($result)) 

	{	$username=$row['user'];	

		$freetime=$row['freetime'];

		$freetimeexpired=$row['freetimeexpired'];

	}

	if ($freetime==0 && (time()-$freetimeexpired)>(3600*$freehours)){

	mysql_query("UPDATE chatusers SET freetime='120', freetimeexpired='0' WHERE id='$_COOKIE[id]' LIMIT 1");

	$freetime=120;

	}




		  //we set the status to offline to models that have not changed theyr status for 30 seconds

		  mysql_query("UPDATE chatmodels SET status='offline' WHERE $nTime-lastupdate>30 AND status!='rejected' AND status!='blocked' AND status!='pending' AND forcedOnline='0'");
?>
<!DOCTYPE html>
<html>
<head>
		<!-- Start css3menu.com HEAD section -->
	
	<link rel="stylesheet" href="../../Camscripts-menuebar_files/css3menu1/style.css" type="text/css" /><style type="text/css">._css3m{display:none}body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
</style>
	<!-- End css3menu.com HEAD section -->

<title><? echo $sitename; ?></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../../styles.css" rel="stylesheet" type="text/css">

<style type="text/css">
<!--

.selector
{
  /*background-image: url(../../images/top-bar-red.png);*/
  background-color:#000;
  position: fixed;
  
  top: 0;
  left: 0;
  width: 100%;
  height: 38px;
  z-index: 99999999;

}


div.hoverbox
  {
  opacity:0.9;
  filter:alpha(opacity=97); /* For IE8 and earlier */
  }
  
  div.hoverbox:hover
  {
  opacity:1.0;
  filter:alpha(opacity=100); /* For IE8 and earlier */
  }






body,td,th {
	color: #FFFFFF;
	font-family: Arial, Helvetica, sans-serif;
}

body {
	margin-left: 0px;
	
	margin-right: 0px;
	
	background-color: #000;
	
	
	
	background-repeat: repeat-x;
	
	background-attachment: fixed;
	
	margin-top: 0px;
	
	margin-bottom: 0px;

	background-color: #000;

}
a:link {
	color: #FFFFFF;
	text-decoration: none;
}
a:visited {
	color: #FFFFFF;
	text-decoration: none;
}
a:hover {
	color: #FFFFFF;
	text-decoration: none;
}
a:active {
	color: #FFFFFF;
	text-decoration: none;
}
.style2 {font-size: 14px; font-family: Arial, Helvetica, sans-serif;}
.style3 {
	font-weight: bold;
	font-size: 11;
}
a {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 11px;
}
.style6 {font-size: 14px}
.style7 {font-weight: bold; font-size: 11px; 

}


.modelbox_title {

	font-family: Arial, Verdana, Tahoma, Helvetica, sans-serif;

	font-size: 16px;

	color: #ffffff;

	font-weight: bold;

}
.new-footer {font-family: Arial, Helvetica, sans-serif}

.new-footer {
	color: #FFF;
	font-size: 9px;

}
.footer-pink-text {
	color: #FF9999;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 10px;
}
.style1 {color: #FF6666}
#footer {
   position:absolute;
   bottom:0;
   width:100%;
   height:155px;   /* Height of the footer */
   background:#6cf;
}
/*my styles*/

.mobile-footer {
    display:none;
}
.topmenu {
    margin-right:30px !important;
}

 @media (max-device-width: 991px) {
     .topmenu input {
         display:none;
     }
    
    .topmenu .username a {
        margin-top:10px;
        font-size:32px !important;
    }
    
      ul#css3menu1 ul a {
        font-size:30px;
        line-height:60px;
    }
    .submenu {
        width:200px !important;
        margin-top:10px;
}

     span.whitebar {
         font-size:40px;
     }
     .navbar-nav a {
         font-size:40px;
         border-bottom:solid white 1px;

     }
     .navbar-brand a img {
         height:60px;
         width:400px;
     }
    .main-footer {
        display:none;
    }
    
    .topmenu img {
        width:300px;
        height:50px;
    }

    /*mobile footer*/
    .mobile-footer {
        display:block;
        text-align:center; 
        background-color:#910173;
        padding:35px;
     }
     .mobile-footer a {
         font-size:40px;
     }
  
 }
-->
</style>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
<script type="text/javascript" src="http://malsup.github.com/jquery.cycle.all.js"></script>
<script type='text/javascript' src='/js/jquery.lazyload.min.js'></script>
</head>
<body>




<div class="selector" align="left">
  <table width="100%" border="0">
    <tr>
      
      <td><!-- Start css3menu.com BODY section -->

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="https://sexysmokesesh.com/"><img src="../../images/sexy-sesh-logo-large.jpg" alt="Sexy Smoke Sesh Logo" width="200" height="30" align="absmiddle" />
<!-- End css3menu.com BODY section --></td>




      <td align="left"></td>
	  
	  
	  
	  
	  
      <td align="right" valign="top">

      
<!-- Start css3menu.com BODY section -->
<ul id="css3menu1" class="topmenu">
	<li class="topmenu username"><a href="#" style="height:10px;line-height:10px;"><span><? if (isset($username)){echo $username;} ?></span></a>
	<div class="submenu" style="width:92px;">
	<ul>
		<li><a href="index.php">My Account</a></li>
		<li><a href="broadcast.php">Broadcast</a></li>
		<li><a href="updateprofile.php">My Profile</a></li>
		<li><a href="showslist.php">My History</a></li>
		<li><a href="uploadpicture.php">My Pictures</a></li>
		<li><a href="paymentop.php">My Money</a></li>
		<li><a href="../../logout.php">Logout</a></li>
	</ul></li>
</ul>

<!-- End css3menu.com BODY section -->
&nbsp;&nbsp;&nbsp;</td>
    </tr>
  </table>
</div>



