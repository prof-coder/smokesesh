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
			$current_page = strtolower(basename($_SERVER['PHP_SELF']));
?>
<!DOCTYPE html>
<html>
<head>

	<link rel="stylesheet" type="text/css" href="../../css/header.css" />	
	<link rel="stylesheet" type="text/css" href="../../css/main.css" />
	<link rel="stylesheet" href="../../Camscripts-menuebar_files/css3menu1/style.css" type="text/css" /><style type="text/css">._css3m{display:none}body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
</style>


<title><? echo $sitename; ?></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../../styles.css" rel="stylesheet" type="text/css">
<?php
if($current_page == 'favorites.php'){
 echo '<link href="../../css/grid-3.css" rel="stylesheet" type="text/css">';
}
else{
 echo '<link href="../../css/grid-2.css" rel="stylesheet" type="text/css">';
}
?>

<style type="text/css">
<!--

.selector
{
  /*background-image: url(../../images/top-bar-red.png);*/
  
  position: fixed;
  background-color:#000;
  top: 0;
  left: 0;
  width: 100%;
  height: 38px;
  z-index: 10;

}


#search {

}

#search input[type="text"] {
    background: url(../../search-dark.png) no-repeat 10px 6px #8F0000;
    border: 0 none;
    font: bold 9px Arial,Helvetica,Sans-serif;
    color: #fff;
    width: 150px;
    padding: 6px 15px 6px 35px;
    -webkit-border-radius: 4px;
    -moz-border-radius: 4px;
    border-radius: 4px;
    text-shadow: 0 2px 2px rgba(0, 0, 0, 0.3);
    -webkit-box-shadow: 0 1px 0 rgba(255, 255, 255, 0.1), 0 1px 3px rgba(0, 0, 0, 0.2) inset;
    -moz-box-shadow: 0 1px 0 rgba(255, 255, 255, 0.1), 0 1px 3px rgba(0, 0, 0, 0.2) inset;
    box-shadow: 0 1px 0 rgba(255, 255, 255, 0.1), 0 1px 3px rgba(0, 0, 0, 0.2) inset;
    -webkit-transition: all 0.7s ease 0s;
    -moz-transition: all 0.7s ease 0s;
    -o-transition: all 0.7s ease 0s;
    transition: all 0.7s ease 0s;
    }

#search input[type="text"]:focus {
    width: 200px;
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
	color: #333;
	text-decoration: none;
}


b:link {
	color: #FFFFFF;
	text-decoration: none;
}
b:visited {
	color: #FFFFFF;
	text-decoration: none;
}
b:hover {
	color: #FFFFFF;
	text-decoration: none;
}
b:active {
	color: #333;
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



.modelbox_title {

	font-family: Arial, Verdana, Tahoma, Helvetica, sans-serif;

	font-size: 16px;

	color: #ffffff;

	font-weight: bold;

}

.footer {
	font-size: 10px;
	font-weight: bold;
	color: #FFFFFF;
	font-family: Arial, Helvetica, sans-serif;
}
body {
	margin-left: 0px;
	margin-right: 0px;
	/*background-image: url(../../images/red-page-bg.png);*/
	background-repeat: repeat-x;
	background-attachment: fixed;
	margin-top: 0px;
	margin-bottom: 0px;
	background-color: #000;
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

 .mobile-footer {
    display:none;
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
     .topmenu li span {
         margin-top:2px;
        font-size:32px;
    }
    .topmenu a {
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
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
<script type="text/javascript" src="https://malsup.github.com/jquery.cycle.all.js"></script>
<script type='text/javascript' src='/js/jquery.lazyload.min.js'></script>
</head>
<body>




<?php
$query=mysql_query("select * from category order by name asc");
while($row=mysql_fetch_object($query))
{
$cats[]=$row->name;
}
$cat_array=array_chunk($cats,7);
$columns=count($cat_array);
?>

<div style="background-color:#000;" class="selector" align="left">
  <table width="100%" border="0">
    <tr>
      
      <td valign="top" style="padding-left:20px;"><!-- Start css3menu.com BODY section -->
<ul id="css3menu1" class="topmenu">


<li class="topmenu"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<center><a href="../../index.php"><img src="../../images/sexy-sesh-logo-large.jpg" alt="Camscripts-logo" width="200" height="30" align="absmiddle" /></a><center></li>




	       
<!--	<li class="topmenu"><form action="../../searchModel_ff.php" method="post" id="search">-->
<!--  <input name="search" type="text" size="40" placeholder="Search..." />-->
<!--</form></li>-->

<li class="topmenu"><a href="../../index.php" style="height:10px;line-height:10px;">Live Webcams</a>	</li>



</ul>
</td>




      <td align="left"></td>
	  
	  
	  
	  
	  
      <td align="right" valign="top">

      

<ul id="css3menu1" class="topmenu">
	<li class="topmenu"><a href="#" style="height:10px;line-height:10px;"><span><? if (isset($username)){echo $username;} ?></span></a>
	<div class="submenu" style="width:92px;">
	<ul>
		<li><a href="index.php">My Account</a></li>
		<li><a href="favorites.php">My Favorites</a></li>
		<li><a href="updateprofile.php">My Profile</a></li>
		<li><a href="viewsessions.php">My History</a></li>
		<li><a href="buyminutes.php">My Money</a></li>
		<li><a href="../../logout.php">Logout</a></li>
	</ul></div></li>
</ul>


&nbsp;&nbsp;&nbsp;</td>
    </tr>
  </table>
</div>



