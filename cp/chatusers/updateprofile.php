<? if (!isset($_COOKIE["id"]) || $_COOKIE['usertype']!="chatusers" )

{

header("location: ../../login.php");

} else{

include("../../dbase.php");

include("../../settings.php");

$result=mysql_query("SELECT user from chatusers WHERE id='$_COOKIE[id]' LIMIT 1");

	while($row = mysql_fetch_array($result)) 

	{	$username=$row[user];	}

}

?>



<?

if($_POST[Email]!=""  && $_POST[Name] !="" && $_POST[Country] !="" && $_POST[State] !="" && $_POST[City] !=""&& $_POST[ZipCode] !="" && $_POST[Adress] !="" && $_POST[Phone] !="") 

{	



	include("../../dbase.php");

	$id=$_COOKIE["id"];

	$tempUser=$username;

	$tempPass1=$_POST[Password1];

	$tempPass2=$_POST[Password2];

	

	$tempEmail=$_POST[Email];

	$tempName = $_POST[Name];

	$tempCountry = $_POST[Country];

	$tempState= $_POST[State];

	$tempPhone=$_POST[Phone];

	$tempCity=$_POST[City];

	$tempZip = $_POST[ZipCode];

	$tempAdress = $_POST[Adress];

	

	$month=date("n");

	$year=date("Y");

	$endDate=mktime (0,0,0,22,$month,$year);	

	mysql_query("UPDATE chatusers SET phone=$tempPhone, email='$tempEmail', name='$tempName', country='$tempCountry', state='$tempState', city='$tempCity', zip='$tempZip', adress='$tempAdress' WHERE id = '$id' LIMIT 1");
     $errorMsg='<p align="center" style="color:yellow">Your Profile Has Been Updated</p>';
	

	if ($_POST[Password1]!=""){	
    if(strlen(trim($_POST[Password1]))<9 && strlen(trim($_POST[Password1]))>5 )
	{
	 $db_pass=md5($_POST[Password1]);
     mysql_query("UPDATE chatusers SET password='$db_pass' WHERE id = '$id' LIMIT 1");
	
	$errorMsg='<p align="center" style="color:yellow">Your Password Has Been Updated</p>';
	}
	else
	{
	$errorMsg='<p align="center" style="color:yellow">Password must be 6 to 8 characters long and may not contain spaces.</p>';
	}

	
  }


}

else if (!isset($_POST[Password1]))

{	

	include("../../dbase.php");

	$id=$_COOKIE["id"];

	$result = mysql_query("SELECT * FROM chatusers WHERE id='".$id."'");

	while($row = mysql_fetch_array($result)) 

	{

		$tempUser=$row["user"];

		$tempPass1=$row["password"];

		$tempPass2=$row["password"];

		$tempState=$row["state"];

		$tempEmail=$row["email"];

		$tempName = $row["name"];

		$tempCountry = $row["country"];

		$tempZip = $row["zip"];

		$tempCity=$row["city"];

		$tempAdress = $row["adress"];

		$tempPhone= $row[phone];

	}

}else

{

$id=$_COOKIE["id"];

	$tempUser=$username;

	$tempPass1=$_POST[Password1];

	$tempPass2=$_POST[Password2];	

	$tempEmail=$_POST[Email];

	$tempName = $_POST[Name];

	$tempCountry = $_POST[Country];

	$tempState= $_POST[State];

	$tempPhone=$_POST[Phone];	

	$tempCity=$_POST[City];

	$tempZip = $_POST[ZipCode];

	$tempAdress = $_POST[Adress];



$errorMsg="Please fill in all boxes with valid information.";



} 

?>

<?
include("_members.header.php");
?><style type="text/css">
<!--
body,td,th {
	color: #FFFFFF;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 14px;
}
body {
	background-color: #000;
}

input {
    height:30px;
}

input, textarea {
    width:100%;
}

.my-button {
    width:200px;
    height:45px;
}

-->
</style>
<p>&nbsp;</p>
<p>&nbsp;</p>
<table width="720" height="800" border="0" align="center" cellpadding="0" cellspacing="0" background="">

  <tr valign="top">

    <td height="113" align="center"><span class="error">
      
    </span>
      <form name="form1" method="post" action="updateprofile.php">

        <table width="1000" border="0" cellpadding="4" cellspacing="0">

          <tr class="barbg">

            <td colspan="3">&nbsp;</td>
          </tr>

          <tr>

            <td height="61" colspan="3" align="right">&nbsp;</td>
          </tr>

          <tr>

            <td style="color:#fff" width="185" align="right" class="form_definitions style1"> User name </td>

            <td class="form_definitions"><? echo $tempUser;?></td>

            <td width="267">&nbsp;</td>
          </tr>

          <tr>

            <td style="color:#fff" align="right" class="form_definitions style1">New Passsword: </td>

            <td><input name="Password1" type="password" id="Password1" size="24" maxlength="24"> 
              &nbsp;&nbsp;&nbsp;&nbsp;Required only if changing password </td>

            <td class="form_informations style2">&nbsp;</td>
          </tr>

          <tr>

            <td align="right" class="form_definitions"><? if($tempEmail==""){ echo "<font color=#ffdd54>Email*</font>";

	 	 	} else{ echo"Email*"; }?>			</td>

            <td><input name="Email" type="text" id="Email" value="<? echo $tempEmail;?>" size="24" maxlength="24"></td>

            <td>&nbsp;</td>
          </tr>

          <tr>

            <td align="right" class="form_definitions"><? if($tempName==""){ echo "<font color=#ffdd54>Full Name*</font>";

	 	 	} else{ echo"Full Name*"; }?>	</td>

            <td><input name="Name" type="text" id="Name" value="<? echo $tempName;?>" size="24" maxlength="24"></td>

            <td>&nbsp;</td>
          </tr>

          <tr>

            <td align="right" class="form_definitions">Country*</td>

            <td width="524">

			<select name="Country" id="Country">

          <?

		$result = mysql_query('SELECT * FROM countries ORDER BY id');

    	while($row = mysql_fetch_array($result)) {

		echo"<option value='$row[id]'";

		if ($tempCountry==$row[id]){

		echo "selected";

		}

		

		echo ">$row[name]</option>";

		}

		  

		  

		  ?>
        </select>			</td>

            <td>&nbsp;</td>
          </tr>

          <tr>

            <td align="right" class="form_definitions"><? if($tempState==""){ echo "<font color=#ffdd54>State*</font>";

	 	 	} else{ echo"State*"; }?>			</td>

            <td><input name="State" type="text" id="State" value="<? echo $tempState;?>" size="24" maxlength="24"></td>

            <td>&nbsp;</td>
          </tr>

          <tr>

            <td align="right" class="form_definitions">

			<? if($tempCity==""){ echo "<font color=#ffdd54>City*</font>";

	 	 	} else{ echo"City*"; }?>			</td>

            <td><input name="City" type="text" id="City" value="<? echo $tempCity;?>" size="24" maxlength="24"></td>

            <td>&nbsp;</td>
          </tr>

          <tr>

            <td align="right" class="form_definitions"><? if($tempZip==""){ echo "<font color=#ffdd54>Zip Code*</font>";

	 	 	} else{ echo"Zip Code*"; }?>            </td>

            <td><input name="ZipCode" type="text" id="ZipCode" value="<? echo $tempZip;?>" size="24" maxlength="24"></td>

            <td>&nbsp;</td>
          </tr>

          <tr>

            <td align="right" class="form_definitions"><? if($tempPhone==""){ echo "<font color=#fff>Phone*</font>";

	 	 	} else{ echo"Phone*"; }?>			</td>

            <td><input name="Phone" type="text" id="Phone" value="<? echo $tempPhone;?>" size="24" maxlength="24"></td>

            <td>&nbsp;</td>
          </tr>

          <tr>

            <td align="right" class="form_definitions"><? if($tempAdress==""){ echo "<font color=#fff>Address*</font>";

	 	 	} else{ echo"Address*"; }?>	</td>

            <td><textarea name="Adress" cols="24" rows="5" id="Adress"><? echo $tempAdress;?></textarea></td>

            <td>&nbsp;</td>
          </tr>

          <tr>

            <td height="83">&nbsp;</td>
            <td valign="top">
               
              <INPUT class="my-button" TYPE="image" SRC="../../images/update-profile.png" HEIGHT="49" WIDTH="192" BORDER="0" ALT="">
              <p><?php if ( isset($errorMsg) && $errorMsg!=""){ echo $errorMsg; } ?></p></td>

            <td>&nbsp;</td>
          </tr>
        </table>

        <p>&nbsp;</p>
    </form></td>
	<?
// include("_members.footer.php");
?>
  </tr>
</table>

