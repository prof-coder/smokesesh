<?
include("_header-admin.php");
?>
	
	<?php	
	
	include('../dbase.php');
	if (isset($_POST['btnSubmit']) != "")
	{
		$sql="Update payccbill set act = '".$_POST['act']."',subact = '".$_POST['subact']."',frmname = '".$_POST['frmname']."',codtxt = '".$_POST['codtxt']."' where code ='1'";
		$res=mysql_query($sql);
	}

    $sql="select * from payccbill where code='1'";
    $res=mysql_query($sql);
    $row=mysql_fetch_array($res);

  if (!is_null($_POST['default']))
  {
    if(!mysql_query("UPDATE default_gateway SET name='CCBill', file='ccbill.php', image='money-bg.png' WHERE id='1'")){
      //create table
      mysql_query("CREATE TABLE IF NOT EXISTS default_gateway (
      id smallint(6) NOT NULL,
      name varchar(200) NOT NULL,
      file varchar(200) NOT NULL,
      image text NOT NULL
      ) ENGINE=InnoDB  DEFAULT CHARSET=utf8") or die(mysql_error());
      //set primary key
      mysql_query("ALTER TABLE default_gateway ADD PRIMARY KEY (id)") or die(mysql_error());

      //insert data
      mysql_query("INSERT INTO default_gateway (id, name, file, image) VALUES (1, 'CCBill', 'ccbill.php', 'money-bg.png')") or die(mysql_error());
    }
  }
    ?>

<form action="" method="POST" onsubmit="return check();">
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <div align="center">
    <table width="1010" border="0">
      <tr>
        <td><div align="center">          
          <h1>CC Bill Payment Gateway Configuration <br />
          </h1>
        </div></td>
      </tr>
    </table>
  </div>
  <table width="1010" border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#ffffff">
  <tr>
    <td bgcolor="#ffffff" class="form_definitions"><p align="center">Enter your CC Bill account information in the fields below and save.     
      <p align="center"><br>
        Account Number<br/> 
        <input type="text" name="act" id="act" value="<?=$row['act']?>" size="60"/>    
        </td></tr>
     <tr>
    <td bgcolor="#ffffff" class="form_definitions"><p align="center"><br>
     Sub-Account Number<br/>
     <input type="text" name="subact" id="subact" value="<?=$row['subact']?>" size="60"/>
    
    </td></tr>
  <tr>
    <td bgcolor="#ffffff" class="form_definitions"><p align="center"><br>
	Form Code <br/> 
	<input type="text" name="frmname" id="frmname" value="<?=$row['frmname']?>" size="60"/>
    
    </td></tr>
     <tr>
    <td bgcolor="#ffffff" class="form_definitions"><p align="center"><br>
     Main Code<br/>
     <input type="text" name="codtxt" id="codtxt" value="<?=$row['codtxt']?>" size="60"/>
    
    </td></tr>
    <tr>
      <td bgcolor="#ffffff" class="form_definitions"><p align="center"><br>
		<input type="submit" value=" Save " name="btnSubmit"/>
    <input type="submit" value="Make Default" name="default"/>
    
    </td>
</tr>
    <tr>
      <td bgcolor="#ffffff" class="form_definitions"><a href="http://ccbill.com" target="_blank"><img src="images/CC-BILL-LOGO.png" rel="nofollow" alt="CC Bill Payment System By: Camscripts.com" width="95" height="109" border="0" /></a></td>
    </tr>
</table>
</form>
<script language="javascript" type="text/javascript">
function check()
{
	if (document.getElementById('act').value =="")
	{
		alert("Please enter account name.");
		document.getElementById('act').focus();
		return false;
	}
		if (document.getElementById('subact').value =="")
	{
		alert("Please enter sub-account name.");
		document.getElementById('subact').focus();
		return false;
	}
		if (document.getElementById('frmname').value =="")
	{
		alert("Please enter form name.");
		document.getElementById('frmname').focus();
		return false;
	}
		if (document.getElementById('codtxt').value =="")
	{
		alert("Please enter code.");
		document.getElementById('codtxt').focus();
		return false;
	}
	return true;
}
</script>
<?
include("_footer-admin.php")
?>
