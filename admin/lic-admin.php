<style type="text/css">
<!--
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





-->
</style>

<?PHP
$sUser= "@SuperAdmin"; 
?>

   <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="88%" height="100%">
        <param name="wmode" value="transparent" />
        <param name=FlashVars value="&fuser=<? echo $sUser; ?>&fmodel=<? echo $_GET[model]; ?>&fid=<? echo $sId; ?>&fmoney=<? echo $nMoney;?>&favorite=<? echo $nFav;?>&freetime=<? echo $freetime;?>&connection=<? echo $connection_string;?>&cpm=<? echo $cpm; ?>&aboutme=<? echo $tMessage; ?>&logo=<? echo $logo;?>&logoTrans=<? echo $logoTrans;?>&race=<? echo $tEthnic;?>&age=<? echo $tBirthD;?>&country=<? echo $tempCountry;?>" />
        <param name="quality" value="high" />
        <param name="SRC" value="admin-view.swf" />
        <param name="SCALE" value="showAll" />
		<param name="allowFullScreen" value="true" />
        <embed flashvars="&fuser=<? echo $sUser; ?>&fmodel=<? echo $_GET[model]; ?>&fid=<? echo $sId; ?>&fmoney=<? echo $nMoney;?>&favorite=<? echo $nFav;?>&freetime=<? echo $freetime;?>&connection=<? echo $connection_string;?>&cpm=<? echo $cpm; ?>&chatText=<? echo $chatText;?>&aboutme=<? echo $tMessage; ?>&logo=<? echo $logo;?>&logoTrans=<? echo $logoTrans;?>&race=<? echo $tEthnic;?>&age=<? echo $tBirthD;?>&country=<? echo $tempCountry;?>" src="admin-view.swf" width="88%" height="100%" quality="high" wmode="transparent" scale="showAll" allowFullScreen="true" pluginspage="https://get.adobe.com/flashplayer/" type="application/x-shockwave-flash"></embed>
   </object>  




<div id="Layer1"><?

		    $count=0;

			$result = mysql_query("SELECT * FROM chatmodels WHERE user!='$tempUser' AND status='online' ORDER BY rand() LIMIT 5");

			while($row = mysql_fetch_array($result)) 

			{

			$count++;

			if ($count==1) {echo"";}

            
			echo "<div id='layer' style><a class='layer1 fancybox.ajax' href='../liveshow.php?model=".$row['user']."' rel='".$row['user']."'><img class='lazy' src ='../models/".$row['user']."/thumbnail.jpg' border='0' width='12%' height='20%'><div style='display:none'></div></a></div></td>";
				




			if ($count==1){ echo""; $count=0;}

			}

			mysql_free_result($result);

			for($i=0; $i<3-$count; $i++)

			{

			//echo "<td width='200' height='150' align='left' valign='middle'>&nbsp</td>";

			}

			echo "";

 			?></div>
   