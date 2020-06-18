<head>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
<script type="text/javascript" src="js/lightbox.js"></script>
<script type='text/javascript' src='js/jquery.lazyload.min.js'></script>

<?


function GetAge($Birthdate)
#
{
#
        // Explode the date into meaningful variables
#
        list($BirthDay,$BirthMonth,$BirthYear) = explode("/", $Birthdate);
#
        // Find the differences
#
        $YearDiff = date("Y") - $BirthYear;
#
        $MonthDiff = date("m") - $BirthMonth;
#
        $DayDiff = date("d") - $BirthDay;
#
        // If the birthday has not occured this year
#
        if ($DayDiff < 0 || $MonthDiff < 0)
#
          $YearDiff--;
#
        return $YearDiff;
#
}
?>


<? if (isset($_COOKIE["usertype"])){

	
    include("_main.header.logged.in.php");	
	
			  	  

	} else {
 
		 
	include("_main.header.php");		  
			  

	}?>













<style type="text/css">


	
	
	
	
	
	.bioText{
        font-size:18px !important;
		
		
		
		
	}	


	.scheduleBtn{
	    position:relative;
		font-family: Arial, Haettenschweiler, Franklin Gothic," sans-serif";
        width:150px;
		height:20px;
		color:FFF;
		background-color:#5C0001;
		padding-top:1px;
        padding-bottom:20px;
		padding-left:1px;
		padding-right:1px;
		text-align:center;
		border-radius:4px;
		vertical-align: middle;
		

	
	
}
	
	
	.chatNowBtn{
		position:relative;
		font-family: Arial, Haettenschweiler, Franklin Gothic," sans-serif";
        width:150px;
		height:20px;
		color:FFF;
		
		background-image: linear-gradient(#111111, #222222);
		padding-top:1px;
        padding-bottom:20px;
		padding-left:1px;
		padding-right:1px;
		text-align:center;
		border-radius:4px;
		vertical-align: middle;
		
		
		
		
	}	
	
	
	.chatNowBtn:hover{
		position:relative;
		font-family: Arial, Haettenschweiler, Franklin Gothic," sans-serif";
        width:150px;
		height:20px;
		color:FFF;
		background-image: linear-gradient(#111, #111);
		padding-top:1px;
        padding-bottom:20px;
		padding-left:1px;
		padding-right:1px;
		text-align:center;
		border-radius:4px;
		vertical-align: middle;
		
		
		
		
	}	
	
	
	
	
	
	
	
	
	

body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	
}
	
	
#Layer1 {
	position:absolute;
	width:100%;
	height:100%;
	z-index:9999;
	left: 88%;
	top: -1%;
	
}
	

#Layer {
	background-color:#880000;
	border-style:solid;
    border-width:1px;
	border-color:#000000;
}
 
	

#Layer:hover
  {
  opacity:0.9;
  filter:alpha(opacity=90); /* For IE8 and earlier */
  }
	
	
  
#Layer
  {
  opacity:1.0;
  filter:alpha(opacity=100); /* For IE8 and earlier */
  }
	
	

</style>









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
		$tempPass1=$row["password"];
		$tempPass2=$row["password"];
		$tempEmail=$row["email"];
		$status=$row['status'];
		$tL1=$row["language1"];
		$tL2=$row["language2"];
		$tL3=$row["language3"];
		$tL4=$row["language4"];
		
		$tBirthD=$row["birthDate"];
                $tBirthD= GetAge($row["birthDate"]);
             //   echo $row["birthDate"];
		$tBraS=$row["braSize"];
		$tBirthS=$row["birthSign"];
		$tMessage=$row["message"];
		$tFantasies=$row["fantasies"];
		$tPosition=$row["position"];
		$tEthnic=$row["ethnicity"];
		$tEyeC=$row["eyeColor"];
		$tHeight=$row["height"];
		$tWeight=$row["weight"];
		$tHeightM=$row["heightMeasure"];
		$tWeightM=$row["weightMeasure"];
		
		$cpm=$row["cpm"];
		$epc=$row["epercentage"];
		$tCategory=$row["category"];
		$rowdate=$row["dateRegistered"];
		$date=date("d F Y,H:i",$rowdate);
		
		$tempName = $row["name"];
		
		$result3=mysql_query("SELECT name FROM countries WHERE id='$row[country]' LIMIT 1");
			while($row3 = mysql_fetch_array($result3)) {
			$tempCountry=$row3[name];
			}
		
		$tempState=$row["state"];
		$tempZip = $row["zip"];
		$tempCity=$row["city"];
		$tempAdress = $row["adress"];
		$tempPMethod=$row["pMethod"];
		$tempPInfo=$row["pInfo"];
		$tOwner=$row['owner'];
		$tempIdmonth=$row['idmonth'];
		$tempIdyear=$row['idyear'];
		$tempIdtype=$row['idtype'];
		$tempIdnumber=$row[idnumber];
		$tempSs=$row[ssnumber];
		$tempPhone=$row[phone];
		$tempBirth=$row[birthplace];
		$tempYahoo=$row[yahoo];	
		$tempMsn=$row[msn];	
		$tempIcq=$row[icq];	
		
		$tHcolor=$row[hairColor];
		$tHlength=$row[hairLength];
		$tPhair=$row[pubicHair];	
		$tBfrom=$row[broadcastplace];
		$tHobbies=$row[hobby];
		$tempFax=$row[fax];	
		$monday=$row[monday];
$tuesday=$row[tuesday];
$wednesday=$row[wednesday];
$thursday=$row[thursday];
$friday=$row[friday];
$saturday=$row[saturday];
$sunday=$row[sunday];

		}
	?>
	
<!--<script type="text/javascript" src="js/prototype.js"></script>
<script type="text/javascript" src="js/scriptaculous.js?load=effects,builder"></script>-->
<!--<script type="text/javascript" src="js/jquery.fancybox.min.js"></script>-->
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" type="text/css" media="screen" />
	
	
<!--Start Layout-->


	
		

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /><div align="center">
<head>
<p>
  <style type="text/css">
<!--
#videoLayer {
	z-index:9999;
}

about-me
{
width:150px;
height:150px;
overflow:scroll;
} 



-->
</style>

  
  
 
  
  <script>

$( document ).ready(function() {


$("img.lazy").lazyload({effect : "fadeIn",

    	effectspeed: 1000 }).removeClass("lazy");
	$('.showThumbnail').live('mouseenter', function() {
     $(this).find(':first-child').css('display', 'none');

      var hiddenDiv = $(this).find(':last-child');

      var iFrameHtml = hiddenDiv.html();

      if (iFrameHtml.indexOf('iframe') == -1) {

      	var username = $(this).attr('rel');

      	hiddenDiv.html('<iframe width="217" class="showThumbnail" href="liveshow.php?model='+username+'" height="174" src="thumbnail-small.php?model='+username+'" scrolling="no" frameborder="0"  allowfullscreen></iframe>');
		

//hiddenDiv.html('<embed class="showThumbnail fancybox.ajax" href="flash_load.php?model='+username+'" height="174" flashvars="&fuser=guest&fmodel=aysa&fid=00&fmoney=0&favorite=0&freetime=&connection=rtmp://camscripts.srfms.com/ppm2/&cpm=" src="thumbnail.swf" width="217" height="174" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash"></embed>');
      }

      hiddenDiv.css('display', 'block');
    });

	$('.showThumbnail').live('mouseleave', function() {
      var hiddenDiv = $(this).find(':last-child');

      hiddenDiv.css('display', 'none');

      hiddenDiv.html('');

      $(this).find(':first-child').css('display', 'block');
	});

$(".fancybox").fancybox({
		openEffect	: 'none',
		closeEffect	: 'none'
	});
$( "#next" ).click(function() {









<?php
$row=mysql_fetch_object(mysql_query("SELECT user from chatmodels  WHERE user!='{$_GET[model]}'   ORDER BY RAND() LIMIT 1"));
$next=$row->user;
unset($row);
?>
window.location='liveshow.php?model=<?=$next;?>';
});

});
$(document).ready(function() {

    $("#bio").fancybox({
     'onStart ': function(){ $.fancybox.hideActivity(); },
'onComplete' : function(){ $.fancybox.hideActivity(); }, 
'autoSize' : false,'openEffect':'none',
'padding':0,'margin':10,'scrolling':'no',
    'transitionIn'      : 'fade',
    'transitionOut'     : 'fade',
	
	'width'       : '100%',
    'height'      : '100%',
    'autoScale'   : false, 
	
	
    'titleShow' : false,
    'overlayColor'  :   '#000000',
    'overlayOpacity':   0.8,
	'closeBtn'    : false,
        }).trigger('click');
    });
$(document).ready(function() {

    $(".showThumbnail").fancybox({
     'onStart ': function(){ $.fancybox.hideActivity(); },
'onComplete' : function(){ $.fancybox.hideActivity(); }, 
'autoSize' : true,'openEffect':'none',
'padding':0,'margin':10,'scrolling':'no',
    'transitionIn'      : 'fade',
    'transitionOut'     : 'fade',
    'titleShow' : false,
    'overlayColor'  :   '#8F0000',
    'overlayOpacity':   0.8,
        }); 
$('#layer').mousedown(function() {
  alert('mouse down');
});
    });
function openchatbox(model)
{
alert(model);
}




function bioClose()
{
$.fancybox.close();
} 





      </script>  
  </head>
  
  
  <?

include("dbase.php");

include("settings.php");

$result=mysql_query("SELECT user from chatusers WHERE id='$_COOKIE[id]' LIMIT 1");

	while($row = mysql_fetch_array($result)) 

	{	$username=$row['user'];	

	}


?>
  
  
  
  
  
  
  <style type="text/css">
<!--

-->
</style>
</p>



<p>&nbsp;</p>
<br>


 <!--
 <table width="55%" border="0" cellpadding="4" background="">
  <tr>
	  <td width="9%" height="72">&nbsp;&nbsp;&nbsp;<strong><h2>&nbsp;</h2></strong></td>
    <td width="61%">&nbsp;</td>
    <td width="30%"><ul id="css3menu1" class="topmenu">
	<li class="topmenu">
	 <a href="javascript:history.go(-1)" style="height:10px;line-height:10px;"> GO BACK </a>
	</li>
	<li class="topmenu">
	  <a id="next" style="height:10px;line-height:10px;"> NEXT PERFORMER </a>
	</li></td>
  </tr>
</table>

	-->


<table width="1100" align="center" bgcolor=#6C0203>
  <tbody>
    <tr>
		<td width="100"><table width="100">
		  <tbody>
		    <tr>
				<td width="92"><div class="bioText"><? echo $tempUser; ?></div></td>
	        </tr>
	      </tbody>
	    </table>
        <a class="bio" href="#bioo" id="bio" style="height:10px;line-height:10px;"><img src="models/<? echo $tempUser; ?>/thumbnail.jpg" width="138" height="94"></a></td>
      <td width="988">

      
       
       
       <table width="974" cellpadding="2">
        <tbody>
         

          <tr>
                   <td width="225"><h4>&nbsp;</h4>
                   <div class="scheduleBtn"><h4>Monday:
					   <?=$monday;?>
					   </h4></div></td>
           
            <td width="232"><h4>&nbsp;</h4>
              <div class="scheduleBtn"><h4>Tuesday:
                <?=$tuesday;?>
				  </h4></div></td>
              
            <td width="235"><h4>&nbsp;</h4>
              <div class="scheduleBtn"><h4>Wednesday:
                <?=$wednesday;?>
				  </h4></div></td>
              
            <td width="254"><h4>&nbsp;</h4>
              <div class="scheduleBtn"><h4>Thursday:
                <?=$thursday;?>
				  </h4></div></td>
              
          </tr>
          <tr>
            <td height="29">
             <div class="scheduleBtn"><h4>Friday:
				 <?=$friday;?></h4></div></td>
              
            <td>
            <div class="scheduleBtn"><h4>Saturday:
				<?=$saturday;?></h4></div></td>
              
            <td>
             <div class="scheduleBtn"><h4>Sunday:
				 <?=$sunday;?></h4></div></td>
              
            <td>
            	
            	<a class="bio" href="#bioo" id="bio" ><div class="chatNowBtn"><h4>Live Chat</h4></div></a>
            	
            </td>
          </tr>
          

          
        </tbody>
      </table></td>
    </tr>
  </tbody>
</table>
<br>
<table width="1097" align="center">
  <tbody>
    <tr>
		<td width="1089"><h2>My Pics</h2></td>
    </tr>
  </tbody>
</table>
<br>
<table width="720" border="0" align="center" cellpadding="0" cellspacing="0">

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







</table>
<div id="bioo" style="display:none;width:100%;height:100%;background-color:<? echo $chatBackgroundColor; ?>;"><?php @include('lic.php');?></div>


<?
@include("images.php");
?>

<?php
$tempUser=$_GET[model];
?>
      
      <table id="hoverbox" width="1000" border="0" cellpadding="0" bordercolor="#000000">
        <tr>
          <td><div class="hoverbox" align="center">
              
              <?

		    $count=0;

			$result = mysql_query('SELECT * FROM modelpictures WHERE user="'.$tempUser.'" ORDER BY dateuploaded DESC');

			while($row = mysql_fetch_array($result)) 

			{

			$count++;

			if ($count==1) {echo"<tr>";}


			echo "<td width='250' height='200' align='center' valign='middle'><div class='hoverbox'><a class='fancybox' href='models/".$tempUser."/".$row['name'].".jpg' rel='group'><img src ='models/".$tempUser."/".$row['name']."_thumbnail.jpg' border='0' width='217' height='217'></a></div></td>";
				

			if ($count==5){ echo"</tr>"; $count=0;}

			}

			mysql_free_result($result);

			for($i=0; $i<5-$count; $i++)

			{

			//echo "<td width='200' height='150' align='left' valign='middle'>&nbsp</td>";

			}

			echo "</tr>";

 			?>
          </div></td></tr>
</table>
 <table width="1100" height="30" border="0" cellpadding="0">
        <tr>
          <td height="41">  &nbsp;
            <div align="center"><img src="images/black-random-performer-bar.png" alt="Random Performers" width="1100" height="30" /></div>
          <div align="center"></div></td>
        </tr>
</table>
  <table id="hoverbox" width="1099" border="0" cellpadding="0" bordercolor="#000000">
        <tr>
          <td><div class="hoverbox" align="center">
           
            <?

		    $count=0;
			  
			  

			$result = mysql_query("SELECT * FROM chatmodels WHERE user!='$tempUser' AND status='online' ORDER BY rand() LIMIT 5");

			while($row = mysql_fetch_array($result)) 

			{

			$count++;

			if ($count==1) {echo"<tr>";}

            
			echo "<td width='200' height='160' align='center' valign='middle'><div id='layer'><a href='liveshow.php?model=".$row['user']."' rel='".$row['user']."'><img src ='models/".$row['user']."/thumbnail.jpg' border='0' width='217' height='174'><div></div></a></div></td>";
				

			if ($count==5){ echo"</tr>"; $count=0;}

			}

			mysql_free_result($result);

			for($i=0; $i<5-$count; $i++)

			{

			//echo "<td width='200' height='150' align='left' valign='middle'>&nbsp</td>";

			}

			echo "</tr>";

 			?>
          </div></td>
        </tr>
</table>
<?
include("_main.footer.php");
?>
    
<map name="Map" id="Map">
<area shape="rect" coords="14,12,179,50" href="#" />
</map>
<map name="Map2" id="Map2">
<area shape="rect" coords="13,12,180,51" href="#" />
</map>