<? if (!isset($_COOKIE["id"]) || $_COOKIE['usertype']!="chatusers" )

{

header("location: ../../registration/user.php");

} else{

include("../../dbase.php");

$result=mysql_query("SELECT user from chatusers WHERE id='$_COOKIE[id]' LIMIT 1");

	while($row = mysql_fetch_array($result)) 

	{	$username=$row[user];	}

}



$temail="";

$tsms="";



if ( $_POST[hiddenField]=="yes" &&$_POST[email]=="true"){

	mysql_query("UPDATE chatusers SET emailnotify='1' WHERE user='$username'");

	$temail="1";

} else if ($_POST[hiddenField]=="yes" &&$_POST[email]==""){

	mysql_query("UPDATE chatusers SET emailnotify='0' WHERE user='$username'");

	$temail="0";

	}







if ( $_POST[hiddenField]=="yes" && $_POST[sms]=="true"){

	mysql_query("UPDATE chatusers SET smsnotify='1' WHERE user='$username'");

	$tsms="1";

	} else if ($_POST[hiddenField]=="yes" && $_POST[sms]=="") {

	mysql_query("UPDATE chatusers SET smsnotify='0' WHERE user='$username'");

	$tsms="0";

	}



if ($temail==""){

	$result=mysql_query("SELECT emailnotify from chatusers WHERE user='$username' LIMIT 1");

	while($row = mysql_fetch_array($result)) 

	{

	$temail=$row[emailnotify];

	}

}



if ($tsms==""){

	$result=mysql_query("SELECT smsnotify from chatusers WHERE user='$username' LIMIT 1");

	while($row = mysql_fetch_array($result)) 

	{

	$tsms=$row[smsnotify];

	}



}



if (isset($_GET[remove]) && $_GET[remove]!=""){

mysql_query("DELETE from favorites WHERE model='$_GET[remove]' AND member='$username' LIMIT 1");

}





?>
<?
include("_members.header.php");
?>

<script>
$(document).ready(function() {
$("img.lazy").lazyload({effect : "fadeIn",

    	effectspeed: 1000 });

			
});

function delfev(_name){
	if(confirm("Are you sure?")){
		window.location.href="favorites.php?remove="+_name;
	}
}
function chtnow(_name){
	window.location.href="/liveshow.php?model="+_name;
}
 </script>
 <style>
 .status {
    background-color: #FC0;
    padding: 10px;
    border-top-left-radius: 5px;
    border-top-right-radius: 5px;
    border-bottom-right-radius: 5px;
    border-bottom-left-radius: 5px;
    color: #000;
    font-size: 12px;
    margin-top: 10px;
		cursor:pointer;
}
.remove {
    background-color: #000;
    padding: 10px 19px 10px 19px;
    border-top-left-radius: 5px;
    border-top-right-radius: 5px;
    border-bottom-right-radius: 5px;
    border-bottom-left-radius: 5px;
    color: #FFF;
    font-size: 12px;
    margin-top: 10px;
		cursor:pointer;
}
.message_box{}
 </style>
<div align="center" id="updates">
<p style="padding:0px; margin:0px; height:40px;">&nbsp;</p>

<div class="cbp-rfgrid">
  <ul>
  <?php
			

			$count=0;
			$nTime=time();
			$result = mysql_query("SELECT t1.*, t2.* FROM favorites AS t1,chatmodels AS t2 WHERE t1.member='$username' AND t2.user=t1.model AND t2.status!='pending' AND t2.status!='offline' AND t2.status!='rejected' order by t1.model asc"  );


			while($row = mysql_fetch_array($result))
			{
					$tBirthD=$row[birthDate];
					$nYears=date('Y',time()-$tBirthD)-1970;
					$username=$row[user];
					$tempMessage=$row[message];
					$tempCity=$row[city];
					$tempPlace=$row[broadcastplace];
					$tempL1=$row[language1];
					$tempL2=$row[language2];
					$status=$row[status];
					$count++;
					
					$output = '';
					
					$output = '<li id="'.$row[id].'" class="message_box">';
					$output .= '<a style="background:/images/modelbox_red_v2.png;" class="showThumbnail" rel="'.$username .'">';
					$output .= '<img class="lazy" src="/graphics/ajax-loader.gif" data-original="/models/'.$username.'/thumbnail.jpg" data-original="images/home/thumbnail.jpg" border="0" style="display: block;">';
					$output .= '</a><a class="showThumbnail"><div class="simple"><h3>'.$username.'</h3></div> <div><h3><span class="status" onclick=\'javascript:chtnow("'.$username .'");\'>Chat Now</span> <span onclick=\'javascript:delfev("'.$username .'");\' class="remove">Remove</span></h3></div></a>';
					$output .= '</li>';
					echo $output;
					
			}
	?>
  	
   </ul>
   <div style="width:100%; float:left; text-align:center;" id="last_msg_loader"></div>
</div>

<input type="hidden" id="hid-last" value="12">
<input type="hidden" id="hid-modl" value="<?php echo $total_modl;?>">
</div>

 
<?
include("_members.footer.php");
?>