<?

include("dbase.php");

include("settings.php");

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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<title><? echo $sitename; ?></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<head>
<link href="styles.css" rel="stylesheet" type="text/css">

<style type="text/css">
<!--

.selector {
  /*background-image: url(images/top-bar-red.png);*/
  position: fixed;
  top: 0;
  left: 0;
  width: 100%!important;
  z-index: 10;
  /*padding-left: 40px;
  padding-right: 40px;*/
  margin-bottom: 40px;
	height:38px;
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
	color: #FFCC00;
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
.style6 {font-size: 11px}
.style7 {font-weight: normal; font-size: 11px; 

}


.modelbox_title {

	font-family: Arial, Verdana, Tahoma, Helvetica, sans-serif;

	font-size: 16px;

	color: #ffffff;

	font-weight: normal;

}

/*.mobile-footer {display:none;}*/
/* @media (max-device-width: 991px) {*/
/*     span.whitebar {*/
/*         font-size:40px;*/
/*     }*/
/*     .navbar-nav a {*/
/*         font-size:40px;*/
/*         border-bottom:solid white 1px;*/

/*     }*/
/*     .navbar-brand a img {*/
/*         height:60px;*/
/*         width:400px;*/
/*     }*/
/*    .main-footer {*/
/*        display:none;*/
/*    }*/
    /*mobile footer*/
/*    .mobile-footer {*/
/*        display:block;*/
/*        text-align:center; */
/*        background-color:#910173;*/
/*        padding:35px;*/
/*     }*/
/*     .mobile-footer a {*/
/*         font-size:40px;*/
/*     }*/
     
/* }*/
-->
</style>


		<!-- Start css3menu.com HEAD section -->
<link rel="stylesheet" href="Camscripts-menuebar_files/css3menu1/style.css" type="text/css" />
	<link rel="stylesheet" media="screen and (min-device-width: 799px)" href="css/grid-2.css" type="text/css" />
		<link rel="stylesheet" media="handheld" href="css/grid-mobile.css" type="text/css" />
	
	<style type="text/css">._css3m{display:none}body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}


#search {

}

#search input[type="text"] {
    background: url(search-dark.png) no-repeat 10px 6px #fff;
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


.more { background: url('show-more-models-button.png') no-repeat; width: 167px; height: 45px; display: block; text-indent: -9999em; }



body,td,th {

	font-family: Arial, Helvetica, sans-serif;

	font-size: 11px;

	font-weight: normal;

}

body {
	margin-left: 0px;
	margin-right: 0px;
	/*background-image: url(images/red-page-bg.png);*/
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
#container {
   min-height:100%;
	 height:100%;
   position:relative;
}
#header {
   /*padding:10px;*/
}
#body {
  
   padding-bottom:60px;   /* Height of the footer */
}
#footer {
   position:absolute;
   bottom:0;
   width:100%;
   height:60px;   /* Height of the footer */
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
</style>
	<!-- End css3menu.com HEAD section -->
  
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>

<script type="text/javascript" src="/js/jquery.cycle.all.js"></script>

<script type='text/javascript' src='/js/jquery.lazyload.min.js'></script>
<script type="text/javascript">
$(document).ready(function() {
$("img.lazy").lazyload({effect : "fadeIn",effectspeed: 500 });

});

function addfev(_name,_yn,_id){
	document.getElementById('dev-fav-val').value = _yn;
	
	$.ajax({
		type: "GET",
		url: "<?php echo $siteurl;?>/add-remove-fav.php",
		data: "user="+_name
	}).done(function(data) {
		if(data == 'added'){
			document.getElementById(_id).src = "<?php echo $siteurl;?>/images/remove-model.png";
		}
		if(data == 'removed'){
			document.getElementById(_id).src = "<?php echo $siteurl;?>/images/add-model.png";
		}
	});
	
	return false;
	stop();
}
function chtnow(_name){
	var _fav = document.getElementById('dev-fav-val').value;
	if(_fav != 'y' && _fav != 'n'){
		window.location.href="/liveshow.php?model="+_name;
	}
	document.getElementById('dev-fav-val').value = '0';
}
</script>
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
<div align="left" class="selector">
  <table width="100%" border="0">
    <tr>
      
      <td valign="top" style="padding-left:21px;"><!-- Start css3menu.com BODY section -->
<ul id="css3menu1" class="topmenu">

	<li class="topmenu"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<center><img src="../../images/sexy-sesh-logo-large.jpg" alt="Camscripts-logo" width="200" height="30" align="absmiddle" /><center></li>	
		
				
<li class="topmenu"><form action="searchModel_ff.php" method="post" id="search">
  <input name="search" type="text" size="40" placeholder="Search..." />
</form></li>

<li class="topmenu"><a href="index.php" style="height:10px;line-height:10px;">Live Webcams</a>	</li>



</ul>
<!-- End css3menu.com BODY section --></td>




      <td align="left"></td>
	  
<?php
if($_COOKIE['usertype']=='chatmodels')
{
$result=mysql_fetch_array(mysql_query("SELECT user from chatmodels WHERE id='$_COOKIE[id]' LIMIT 1"));
$model=$result['user'];
}
?>	  
	  
	  
	  
      <td align="right" valign="top"><!-- Start css3menu.com BODY section -->
<ul id="css3menu1" class="topmenu">
	<li class="topmenu"><a href="#" style="height:10px;line-height:10px;"><span><? if (isset($username)){echo $username;} ?><? if (isset($model)){echo $model;} ?></span></a>
	<div class="submenu" style="width:92px;">
	<ul>   <?php if($username) {
		echo '<li><a href="cp/chatusers/index.php">My Account</a></li>
		<li><a href="cp/chatusers/favorites.php">My Favorites</a></li>
		<li><a href="cp/chatusers/updateprofile.php">My Profile</a></li>
		<li><a href="cp/chatusers/viewsessions.php">My History</a></li>
		<li><a href="cp/chatusers/buyminutes.php">My Money</a></li>
		<li><a href="logout.php">Logout</a></li>';} ?>

<?php if($model) {
		echo '<li><a href="index.php">My Account</a></li>
		<li><a href="cp/chatmodels/broadcast.php">Broadcast</a></li>
		<li><a href="cp/chatmodels/updateprofile.php">My Profile</a></li>
		<li><a href="cp/chatmodels/showslist.php">My History</a></li>
		<li><a href="cp/chatmodels/uploadpicture.php">My Pictures</a></li>
		<li><a href="cp/chatmodels/paymentop.php">My Money</a></li>
		<li><a href="logout.php">Logout</a></li>';} ?>

	</ul></div></li>
</ul>
<!-- End css3menu.com BODY section --></td>
    </tr>
  </table>
</div>
