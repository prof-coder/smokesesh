<? if (isset($_COOKIE["usertype"])){

	
    include("_main.header.logged.in.php");	
	
			  	  

	} else {
 
		 
	include("_main.header.php");		  
			  

	} ?>
    
    <?
$host = "https://".$_SERVER['HTTP_HOST']."/";


$models_per_page = 50;		// never make this 0, never

$max_page_show = 15;


 $model_order = 'order by RAND()';






	  if (!isset($_GET['page']))

	  {

		$page=1;

		$query_add = " $model_order limit ".($page-1).", $models_per_page";

	  }

	  else

	  {

		$page = $_GET['page'];

		$query_add = " $model_order limit ".(($page-1)*$models_per_page).",$models_per_page";

	  }



	$select="SELECT * FROM chatmodels WHERE 1" ;



	$result = mysql_query($select);



	$nTotal=mysql_num_rows($result);



	mysql_free_result($result);



	if ($max_page_show >= $nTotal)

	{

		$start_from = 1;

		$loop_till = ceil($nTotal/$models_per_page);

	}

	else

	{

		if ($page > $max_page_show)

		{

			$start_from = $page;

		}

		else

		{

			$start_from = 1;

		}

		$loop_till = ($max_page_show+$page);

	}



?>






<?php
include("geoip/geoip.inc");
$gi = geoip_open("geoip/GeoIP.dat", GEOIP_STANDARD);
$cc=geoip_country_code_by_addr($gi, $_SERVER['REMOTE_ADDR']);
geoip_close($gi);
?>










<div align="center" id="updates">
  
  
  <div class="cbp-rfgrid">
  <ul>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <?php
	if (isset($_COOKIE["usertype"])){
		$qr_fav = "select * from favorites WHERE member='$username'";
		$rs_fav = mysql_query($qr_fav);
		$_fav_mdls = array();
		while($ar_fav = mysql_fetch_array($rs_fav)){
			$_fav_mdls[] = $ar_fav['model'];
		}
	}
	
	
		$count=0;
			$nTime=time();
			if (!isset($_GET['category']))
			{
			$select="SELECT * FROM chatmodels WHERE status='online'".$query_add;//100hours

			} else{
			$select="SELECT * FROM chatmodels WHERE category='$_GET[category]' AND status='online'".$query_add;
			}

$select="select * from chatmodels c where not exists(select id from blockedcountry b where  b.model=c.user  and b.cc='$cc') and c.status='online' order by rand() limit 41;";
			$result = mysql_query($select);
$_total_modl = mysql_num_rows($result);
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
					
					$is_hd_on=$row[is_hd_on];
					$_hd_img = '';
					if($is_hd_on == 'y'){
						$_hd_img = '<img src="images/HD-3.png" style="width:40px;height:25px;position:absolute;top:3px;right:5px;" alt="hd">';
					}
					
					$count++;
					
					$output = '';
				
					$output = '<li>';
					$output .= '<a href="'.$host.'liveshow.php?model='.$username.'" class="showThumbnail" onclick=\'javascript:chtnow("'.$username.'");\' rel="'.$username .'">';
					$output .= '<img class="lazy" src="/graphics/ajax-loader.gif" data-original="models/'.$username.'/thumbnail.jpg" data-original="images/home/thumbnail.jpg" border="0" style="display: block;">';
					if (isset($_COOKIE["usertype"])){
						if(in_array($username,$_fav_mdls)){
							$output .= '<div class="simple"><img src="'.$siteurl.'/images/remove-model.png" style="width:40px;height:25px;float:left;padding:3px 0px 0px 0px;cursor:pointer;" id="img-'.$username.'" onclick=\'javascript:addfev("'.$username.'","n",this.id);\' alt="heart" class="dev-heart"><h3>'.$username.'</h3>'.$_hd_img.'</div></a>';	
						}
						else{
							$output .= '<div class="simple"><img src="'.$siteurl.'/images/add-model.png" style="width:40px;height:25px;float:left;padding:3px 0px 0px 0px;cursor:pointer;" id="img-'.$username.'" onclick=\'javascript:addfev("'.$username.'","y",this.id);\' alt="heart" class="dev-heart"><h3>'.$username.'</h3>'.$_hd_img.'</div></a>';
						}
					}
					else{
						$output .= '<div class="simple"><img src="'.$siteurl.'/images/add-model.png" style="width:40px;height:25px;float:left;padding:3px 0px 0px 0px;cursor:pointer;" alt="heart"><h3>'.$username.'</h3>'.$_hd_img.'</div></a>';
					}
					$output .= '</li>';
					echo $output;
					
			}
	?>
  	
   </ul>
   
    <?php if($_total_modl > 0 && $_total_modl == 41){ ?>
   <div align="center">
		  <p>&nbsp;</p>
		  
		 
          <div class="hoverbox" align="center"><a href="index.php"><br />
          <img src="images/show-more-models.png" alt="Show More Models" width="192" height="49" border="0" /></a></div>
		  <br />

    </div>
   <?php } ?>
</div>


</div>

<br />

</p>

  <p>

</p>

    </p>



    <div align="center">
      <p>
        <script type="text/javascript">$("img.lazy").lazyload({effect : "fadeIn",

    	effectspeed: 1000 }).removeClass("lazy");

		$(document).ajaxStop(function(){
			$("img.lazy").lazyload({
				effect: 1000
			}).removeClass("lazy");
		});
		
		
		
		
		
		

      </script>
       
      <input type="hidden" value="" id="dev-fav-val" />
        
      <!-- refresh models every 60 seconds --> 
      <meta http-equiv="refresh" content="280">  
        
        
        
      </p>
      
</div>
<div class="disclaimer">
<!--Start Zombaio Code--><script src="https://secure.zombaio.com/External/loc-scr/?63304158wb3bddf77678896c569b2a7d5aae88d89"></script><!--End Zombaio Code-->
</div>
<? 
include("_main.footer.php"); 
?>