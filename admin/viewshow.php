<?
include("_header-admin.php");
?>
<html>
<head>
</head>

<?
include('../settings.php');
include('../dbase.php');
	$sUser="@Super Admin";

?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title><? echo $sitename; ?> - Live Show</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="styles.css" rel="stylesheet" type="text/css"></head>

<body>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<table width="1200" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr valign="top">
    <td colspan="6"><div align="center">
      <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="1200" height="650">
		  <PARAM NAME=FlashVars VALUE="&fuser=<? echo $sUser; ?>&fmodel=<? echo $_GET[model]; ?>&fid=<? echo $sId; ?>&fmoney=<? echo $nMoney;?>&favorite=<? echo $nFav;?>&freetime=<? echo $freetime;?>&connection=<? echo $connection_string;?>&cpm=<? echo $cpm; ?>">
          <param name="quality" value="high"><param name="SRC" value="viewshow.swf">
          <embed flashvars="&fuser=<? echo $sUser; ?>&fmodel=<? echo $_GET[model]; ?>&fid=<? echo $sId; ?>&fmoney=<? echo $nMoney;?>&favorite=<? echo $nFav;?>&freetime=<? echo $freetime;?>&connection=<? echo $connection_string;?>&cpm=<? echo $cpm; ?>" src="viewshow.swf" width="1200" height="650" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash"></embed>
      </object>
    </div></td>
  </tr>
</table>
</body>
</html>
<?
include("_footer-admin.php");
?>