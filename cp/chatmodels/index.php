<head>
<META http-equiv="refresh" content="3;URL=paymentop.php">



<? if (!isset($_COOKIE["id"]) || $_COOKIE['usertype']!="chatmodels" )

{

header("location: ../../login.php");

} else{

include("../../dbase.php");

$result=mysql_query("SELECT user from $_COOKIE[usertype] WHERE id='$_COOKIE[id]' LIMIT 1");

	while($row = mysql_fetch_array($result)) 

	{	$username=$row['user'];	}

}

mysql_free_result($result);


	$welcomeQuery = "SELECT models FROM welcome"; 
	$resultModel = mysql_query($welcomeQuery) or die(mysql_error()); 
	$chkN = mysql_num_rows($resultModel) ; 
	if($chkN > 0 ) 
	{
		$valueWM = mysql_result($resultModel,0,'models'); 
	}
	else
	{
		$valueWM = "Welcome text not defined"; 
	}
?>

<?
include("_models.header.php");
?><style type="text/css">
<!--

-->
</style>

<p>&nbsp;</p>


<table width="720" height="377" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="">

  <tr>

    <td height="377" align="center" valign="middle"><table width="522" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="361"><h3 align="center" class="please-wait-text">&nbsp;</h3>
          <div align="center">
  <table width="550" height="303" border="0" background="">
    <tr>
      <td height="299"><div align="center">
		  <span class="please-wait-text">
		  <h5>Please wait. Verifying You...		  </h5>
		  </span>
      </div></td>
    </tr>
  </table>
</div></p></td>
      </tr>
      <tr>
        
      </tr>
    </table>
    <br />
    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="0" height="0">
      <param name="movie" value="logout_redirect.swf" />
      <param name="quality" value="high" />
      <embed src="logout_redirect.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="0" height="0"></embed>
    </object></td>

  </tr>
</table>























<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>
  <?
include("_models.footer.php");
?>

