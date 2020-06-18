<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<?
include("../dbase.php");
include("../settings.php");
$nTime=time(); 

		  

		  //we set the status to offline to models that have not changed theyr status for 30 seconds

		  mysql_query("UPDATE chatmodels SET status='offline' WHERE $nTime-lastupdate>30 AND status!='rejected' AND status!='blocked' AND status!='pending' AND forcedOnline='0'");
?>

<?php

error_reporting(0); // Turn off all error reporting

?>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>



		<!-- Start css3menu.com HEAD section -->
	<link rel="stylesheet" href="../Camscripts-menuebar_files/css3menu1/style.css" type="text/css" /><style type="text/css">._css3m{display:none}body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}



#search {

}

#search input[type="text"] {
    background: url(../search-dark.png) no-repeat 10px 6px #8F0000;
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

.navbar-nav a {
         font-size:14px;
     }

.mobile-footer {display:none;}
 @media (max-device-width: 991px) {
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


</style>
	<!-- End css3menu.com HEAD section -->




<?php
$query=mysql_query("select * from category order by name asc");
while($row=mysql_fetch_object($query))
{
$cats[]=$row->name;
}
$cat_array=array_chunk($cats,7);
$columns=count($cat_array);
?>

<html>
<div class="selector" align="left">
  <table width="100%" border="0">
    <tr>

<nav  style="background-color:#000 !important;" class="navbar navbar-default navbar-expand-lg navbar-light bg-light">
            <div class="navbar-brand col col-4 logo">
                <a style="padding:0px;" href="/index.php"><img src="../../images/sexy-sesh-logo-large.jpg" alt="sexy-somke-sesh-logo" width="200" height="30" align="absmiddle" valign="top" /></a>
             
            </div>
  <!--          <form action="searchModel_ff.php" method="post" id="search">-->
  <!--<input name="search" type="text" style="background-color:#fff;" size="40" placeholder="Search..." />-->
</form>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
              <span style="color:#fff;" class="whitebar">MENU</span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
              <div class="navbar-nav ml-auto">
             
                <a  style="color:#fff; text-align:center; " class="nav-item nav-link" href="../../index.php">Live Webcams</a>
                <a  style="color:#fff; text-align:center; " class="nav-item nav-link" href="../../registration/user.php">Register</a>
                <a  style="color:#fff; text-align:center;" class="nav-item nav-link disabled" href="../../login_member.php">Login</a>
              </div>
            </div>
          </nav>
    </tr>
  </table>
</div>
<head>





<title><? echo $sitename; ?></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="../styles.css" rel="stylesheet" type="text/css">

<style type="text/css">
<!--

.selector
{
  /*background-image: url(../images/top-bar-red.png);*/
  background-color:#000;
  position: fixed;
  
  top: 0;
  left: 0;
  width: 100%;
  height: 38px;
  z-index: 10;

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
	
	background-color: #8F0000;
	
	
	
	background-repeat: repeat-x;
	
	background-attachment: fixed;
	
	margin-top: 0px;
	
	margin-bottom: 0px;

	background-color: #8F0000;

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
	color: #FFCC00;
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
.style6 {font-size: 11px}
.style7 {font-weight: bold; font-size: 11px; 

}


.modelbox_title {

	font-family: Arial, Verdana, Tahoma, Helvetica, sans-serif;

	font-size: 16px;

	color: #ffffff;

	font-weight: bold;

}

-->
</style>



