<?
include("_header-admin.php")
?>



<style type="text/css">
<!--


.selector
{
  background-image: url();
  background-color: #FFFFFF;
  
  position: fixed;
  
  top: 0;
  left: 0;
  width: 100%;
  height: 40px;
  z-index: 10;

}
-->

</style>





<p>&nbsp;</p>
<p><br />
</p>
<div align="center">
  <table width="1010" border="0">
    <tr>
      <td><div align="center">
        <h1>          Performer Payouts </h1>
      </div></td>
    </tr>
  </table>
</div>
<table width="1010" border="0" align="center" bgcolor="#ffffff">
  <tr valign="top">
     <td height="113" class="form_definitions">      <br>      <table width="1010" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td><div align="center"><a href="payments.php">Make Payments</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="paymentop.php">View Payments</a></div></td>
      </tr>
    </table>
      <br>
      <p class="a_small_title"><strong>Previous Payments</strong></p>
      <p>	
	  <!-- beginning of new code -->
	  
	 <?
	
	//$secondsThisMonth=time(i)*60+time(G)*3600+time(j)*86400
	//$secondsAll=time();
		
	include('../dbase.php');
	$count=0;
	$result = mysql_query("SELECT * FROM chatmodels WHERE status!='pending' AND status!='rejected'");
	while($row = mysql_fetch_array($result)) 
	{
	$count++;
	$model=$row[user];
	$minimum=$row[minimum];
	$ammount=0;
	$epercentage=0;
	$tempMinutesPv=0;
	$tempMoneyEarned=0;
	$tempMoneySent=0;
			$month=date("n");
			$year=date("Y");
			$endDate=mktime (0,0,0,22,$month,$year);	
			$result3 = mysql_query("SELECT * FROM videosessions WHERE model='$model' AND paid!='1' AND date<'$endDate'");
			while($row3 = mysql_fetch_array($result3)) 
				{
				$ammount= $row3[ammount];
				$epercentage=$row3[epercentage];
				$duration=$row3[duration];
				$cpm=$row3[cpm];
				$ammount=(($duration/60)*$cpm)*$epercentage/10000 ;
				$tempMoneyEarned+=$ammount;
				if ($row3[paid]=="1"){ $tempMoneySent+=$ammount;}				
				}
				
			$total=$tempMoneyEarned-$tempMoneySent;
			
			if ($total>$minimum){
			$result2 = mysql_query("SELECT id,email, user, pInfo, country, pMethod, name FROM chatmodels WHERE user='$model'");
			while($row2 = mysql_fetch_array($result2)) 
				{	
		
				}
			}
			
			
	}
	
	?>
	  
	  
	  
	  
	  
	  
	  <!-- End of new code -->
	  
	  
	  
	  
	  <?
	  
	  
	$space="&nbsp;";
	
	
	//$secondsThisMonth=time(i)*60+time(G)*3600+time(j)*86400
	//$secondsAll=time();
		
	include('../dbase.php');
	$count=0;
	$result = mysql_query("SELECT * FROM payments ORDER BY date DESC");
	while($row = mysql_fetch_array($result)) 
	{
	$count++;	
	$ammount= number_format((float)$row['ammount'],2,'.', ',');
	echo'<table class="form_definitions" width="1010" bgcolor="#ffffff" border="0" align="center" cellpadding="2" cellspacing="1">
		<tr>
		<td bgcolor="ffffff" >'.$count.') <b>'.$model .' '.$space .' '.$ammount .' USD</b> sent on '.date("d M Y, G:i", $row['date']).'</td>
		</tr> 
		<tr>
		<td bgcolor="ffffff"><p><b>Method:</b> '.$row['method'].'<br><b>Details:</b>'.$row['details'].'</p></td>
		</tr>
		</table>
		<br>';
	}
	mysql_free_result($result);
	?>
	  </p>
	</td>
  </tr>
</table>
<?
include("_footer-admin.php")
?>
