<?
if (isset($_COOKIE["usertype"])){

	
    include("_main.header.logged.in.php");	
	
			  	  

	} else {
 
		 
	include("_main.header.php");		  
			  

	}

?>

<div align="center" id="updates">
<p style="padding:0px; margin:0px; height:40px;">&nbsp;</p>

<div class="cbp-rfgrid">
  <ul>
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
			$model=htmlentities($_POST[search]);
if($model)
{
			$result = mysql_query("SELECT * FROM chatmodels  WHERE user like '%$model%' AND status!='rejected' AND status!='blocked' AND status!='pending' order by rand() limit 41");
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
					$output .= '<a class="showThumbnail" onclick=\'javascript:chtnow("'.$username.'");\' rel="'.$username .'">';
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
}
	?>
  	
   </ul>
   
    <?php if($_total_modl > 0 && $_total_modl == 41){ ?>
   <div align="center">
		  <p>&nbsp;</p>
		  
		 <form method="post" id="search_hidden" action="searchModel_ff.php"><input type="hidden" name="search" value="<?php echo $model;?>"/></form>
          <div class="hoverbox" align="center"><a href="javascript:void(0);" onclick="javascript:srch();"><br />
          <img src="images/show-more-models.png" alt="Show More Models" width="192" height="49" border="0" /></a></div>
		  <br />

    </div>
   <?php } ?>
</div>


</div>
<br />

</p>

  <p>

<p>

    </p>
<script type="text/javascript">
function srch(){
	document.getElementById('search_hidden').submit();
}
</script>
<input type="hidden" value="" id="dev-fav-val" />

       <?
include("_main.footer.php");
?>
