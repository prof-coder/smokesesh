<? if (!isset($_COOKIE["id"]) || $_COOKIE['usertype']!="chatusers" )

{

//nothing

} else{

include("../../dbase.php");

$result=mysql_query("SELECT user from chatusers WHERE id='$_COOKIE[id]' LIMIT 1");

	while($row = mysql_fetch_array($result)) 

	{	$username=$row[user];	}

}
$last=$_GET['last'];
$result = mysql_query("SELECT t1.*, t2.* FROM favorites AS t1,chatmodels AS t2 WHERE t1.member='$username' AND t2.user=t1.model AND t2.status!='pending' AND t2.status!='offline' AND t2.status!='rejected' order by t1.model asc limit $last,4"  );
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
		$output .= '<img class="lazy" src="/models/'.$username.'/thumbnail.jpg" border="0" style="display: block;">';
		$output .= '</a><a class="showThumbnail"><div class="simple"><h3>'.$username.'</h3></div> <div><h3><span class="status" onclick=\'javascript:chtnow("'.$username .'");\'>Chat Now</span> <span onclick=\'javascript:delfev("'.$username .'");\' class="remove">Remove</span></h3></div></a>';
		$output .= '</li>';
		echo $output;
		
}

?>