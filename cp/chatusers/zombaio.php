<?php
include('../../dbase.php');
$sql2="select * from payzombaio where id='1'";
$res2=mysql_query($sql2);
$row=mysql_fetch_object($res2);

$site_id = $row->site_id;
$pricing_id = $row->pricing_id;
$gwpass = $row->gwpass;
//get data from buyminutes page
$amt=number_format($_GET['amt'],2);
$id=$_GET['id'];
$username=$_GET['usr'];
//form data to submit
$hash=md5($gwpass.$amt);
$post['DynAmount_Value']=$amt;
$post['DynAmount_Hash']=$hash;
$post['identifier']=$username;
$post['approve_url']= $row->approve_url;
$post['decline_url']=$row->decline_url;

$salt = $row->salt;
$vhash = md5($username.$amt.$salt);
?>
<html>
	<head></head>
	<body onLoad="javascript:submitform();">
	<br/><br/><br/>
	<center>
	<h1>LOADING.......</h1>
	</center>
	
	<!--<form  name="frmPayment" action='https://secure.zombaio.com/?287655200.1744278.ZOM'  method=POST >-->
<form  name="frmPayment" action="https://secure.zombaio.com/?<?=$site_id?>.<?=$pricing_id?>.US" method="post">
<?php
 foreach($post as $key => $value)
{
echo '<input type="hidden" name="'.$key.'"  value="'.$value.'">';
}
?>
<input type="hidden" name="extra" value="&user=<?=$username?>&tokens=<?=$amt?>&vhash=<?=$vhash?>">
</form>

<!-- 
 -->
<!--<input type=submit name=submit  value='Join  Now'>

</form>-->
	<SCRIPT language="JavaScript">
	window.setTimeout(submitform,1000);
	function submitform()
	{
	
document.frmPayment.submit();
	}
</SCRIPT> 
	</body></html>