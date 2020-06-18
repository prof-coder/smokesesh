<?php
include("_header-admin.php");
?>

	<?php
  $site = $_SERVER['HTTP_HOST'];
	include('../dbase.php');
	if (!empty($_POST['btnSubmit']))
	{
    $sid = mysql_real_escape_string($_POST['sid']);
    $pid = mysql_real_escape_string($_POST['pid']);
    $gwpass = mysql_real_escape_string($_POST['gwpass']);
		$sql="UPDATE payzombaio SET site_id = '$sid', pricing_id = '$pid', gwpass = '$gwpass', approve_url = '".mysql_real_escape_string($_POST['a_url'])."', decline_url = '".mysql_real_escape_string($_POST['d_url'])."' WHERE id ='1'";

    if(mysql_fetch_array(mysql_query("select * from payzombaio WHERE id = '1'"))){     
      mysql_query($sql);
    }else{
      //insert data
      mysql_query("INSERT INTO payzombaio (id, site_id, pricing_id, gwpass, approve_url, decline_url) VALUES (1, '$sid', '$pid', '$gwpass', 'http://$site/cp/chatusers/buyminutes.php', 'http://$site/cp/chatusers/buyminutes.php')") or die(mysql_error());
    }

    if(!mysql_query("SELECT * FROM credit_logs")){
		    //create log table
		    mysql_query("CREATE TABLE IF NOT EXISTS credit_logs (
		    id smallint(6) NOT NULL,
		    amount varchar(100) NOT NULL,
		    method varchar(100) NOT NULL,
		    details text NOT NULL,
		    date bigint(24) NOT NULL
		    ) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1") or die(mysql_error());
		    //set primary key
		    mysql_query("ALTER TABLE credit_logs
		    ADD PRIMARY KEY (id)") or die(mysql_error());
	   }
	
  }

      if($res=mysql_query("select * from payzombaio")){
        $row=mysql_fetch_array($res);
      }else{
      $site = $_SERVER['HTTP_HOST'];
      //create table
      mysql_query("CREATE TABLE IF NOT EXISTS payzombaio (
      id smallint(6) NOT NULL,
      site_id varchar(100) NOT NULL,
      pricing_id varchar(100) NOT NULL,
      gwpass text NOT NULL,
      approve_url text NOT NULL,
      decline_url text NOT NULL
      ) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1") or die(mysql_error());
      //set primary key
      mysql_query("ALTER TABLE payzombaio
      ADD PRIMARY KEY (id)") or die(mysql_error());
      
        }

  if (!is_null($_POST['default']))
  {
    if(!mysql_query("UPDATE default_gateway SET name='Zombaio', file='zombaio.php' WHERE id='1'")){
      //create table
      mysql_query("CREATE TABLE IF NOT EXISTS default_gateway (
      id smallint(6) NOT NULL,
      name varchar(200) NOT NULL,
      file varchar(200) NOT NULL,
      
      ) ENGINE=InnoDB  DEFAULT CHARSET=utf8") or die(mysql_error());
      //set primary key
      mysql_query("ALTER TABLE default_gateway ADD PRIMARY KEY (id)") or die(mysql_error());

      //insert data
      mysql_query("INSERT INTO default_gateway (id, name, file) VALUES (1, 'Zombaio', 'zombaio.php', 'money-bg-zombaio.png')") or die(mysql_error());
    }
  }

    ?>
<div style="position: relative; top:20px">
<form action="" method="POST" onsubmit="return check();">
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <div align="center">
    <table width="1010" border="0">
      <tr>
        <td><div align="center">
          <h1>Zombaio Payment Gateway Configuration <br />
          </h1>
        </div></td>
      </tr>
    </table>
  </div>
  <table width="1010" border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#ffffff">
  <tr>
    <td bgcolor="#ffffff" class="form_definitions"><p align="center">Enter your Zombaio (ZOA) account information in the fields below and save.
      <p align="center"><br>
        Site ID<br/>
        <input type="text" name="sid" id="sid" value="<?=$row['site_id']?>" size="60"/>
        </td></tr>
     <tr>
    <td bgcolor="#ffffff" class="form_definitions"><p align="center"><br>
     Pricing ID<br/>
     <input type="text" name="pid" id="pid" value="<?=$row['pricing_id']?>" size="60"/>

    </td></tr>
  <tr>
    <td bgcolor="#ffffff" class="form_definitions"><p align="center"><br>
	Zombaio GWPass <br/>
	<input type="text" name="gwpass" id="gwpass" value="<?=$row['gwpass']?>" size="60"/>

    </td></tr>
     <tr>
    <td bgcolor="#ffffff" class="form_definitions"><p align="center"><br>
     Approve URL (Goto this url if trans successful)<br/>
     <input type="text" name="a_url" id="a_url" value="<?=$row['approve_url']?>" size="60"/>

    </td></tr>
    <tr>
    <td bgcolor="#ffffff" class="form_definitions"><p align="center"><br>
     Decline URL (Goto this url if trans failed)<br/>
     <input type="text" name="d_url" id="d_url" value="<?=$row['decline_url']?>" size="60"/>

    </td></tr>
    <tr>
      <td bgcolor="#ffffff" class="form_definitions"><p align="center"><br>
		<input type="submit" value=" Save " name="btnSubmit"/>
    <input type="submit" value="Make Default" name="default"/>
    </td>
</tr>
    <tr>
      <td bgcolor="#ffffff" class="form_definitions"><a href="http://zombaio.com" target="_blank"><img src="http://d2pgxf7ejbxa2o.cloudfront.net/images/graphic/logo.png" rel="nofollow" alt="Zombaio Payment System By: Camscripts.com" border="0" /></a></td>
    </tr>
</table>
</form>
    </div>
<script language="javascript" type="text/javascript">
function check()
{
	if (document.getElementById('sid').value =="")
	{
		alert("Please enter the site id.");
		document.getElementById('sid').focus();
		return false;
	}
		if (document.getElementById('pid').value =="")
	{
		alert("Please enter the pricing id.");
		document.getElementById('pid').focus();
		return false;
	}
		if (document.getElementById('gwpass').value =="")
	{
		alert("Please enter the zombaio gwpass.");
		document.getElementById('gwpass').focus();
		return false;
	}
		if (document.getElementById('a_url').value =="")
	{
		alert("Please enter the approval url.");
		document.getElementById('a_url').focus();
		return false;
	}
    if (document.getElementById('d_url').value =="")
  {
    alert("Please enter the decline url.");
    document.getElementById('d_url').focus();
    return false;
  }
	return true;
}
</script>
<?
include("_footer-admin.php")
?>
