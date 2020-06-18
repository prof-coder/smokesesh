 <? if (!isset($_COOKIE["id"]) || $_COOKIE['usertype']!="chatusers" )

{

header("location: ../../login.php");

} else{

include("../../dbase.php");

$result=mysql_query("SELECT id,user from chatusers WHERE id='$_COOKIE[id]' LIMIT 1");

	while($row = mysql_fetch_array($result)) 

	{	$username=$row[user];	
    $user_id = $row['id'];
  }

$gateway = mysql_fetch_array(mysql_query("SELECT * FROM default_gateway WHERE id='1'"));
}


?>

<?
include("_members.header.php");
?><style type="text/css">
<!--



body,td,th {
	//color: #000000;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 14px;
}
a:link {
	//color: #FFFFFF;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	//color: #FFFFFF;
}
a:hover {
	text-decoration: none;
	//color: #fff;
}
a:active {
	text-decoration: none;
	//color: #FFFFFF;
}



div.hoverbox2
  {
  opacity:1.0;
  filter:alpha(opacity=100); /* For IE8 and earlier */
  }
  
  div.hoverbox2:hover
  {
  opacity:0.8;
  filter:alpha(opacity=80); /* For IE8 and earlier */
  }




-->
.token_box{width:150px;height:175px;float:left;margin:10px;}
 .token_box h1{padding-top:5px;margin:0 auto;text-align:center;}
 .token_box h2{padding-top:5px;margin:0 auto;text-align:center;}
 .token_box h3{padding-top:5px;margin:0 auto;text-align:center;}
.token_box .btn {margin-top:20px;text-align:center;opacity:1.0;filter:alpha(opacity=100);}
.token_box .btn:hover {margin-top:20px;text-align:center;opacity:0.8;filter:alpha(opacity=95);}

.money-hdr {
  font-size:32px;
  color:#FFFFFF;
  width:275px;
  height:35px;
  background-color:#000;
  border-radius:4px;
  padding:2px;
  margin-top:2px;
  margin-bottom:2px; 
  text-align:center;
margin: 0 auto;
}

.tokendivs{
    display:flex;
    flex-wrap: wrap;
    padding:50px;
    max-width:550px;
    justify-content:center;
}
p{
    text-align:center;
}

@media (max-width: 768px){
  .tokendivs{
    /*flex-direction:column;*/
     align-items: center;
     justify-content:;
    } 
    p {
        text-align:center;
    }
}

</style>


<div align="center">
  <p>&nbsp;</p>
  <table width="" border="0">
    <tr>
      <td width="">&nbsp;</td>
      <td width=""><h1>Account Balance </h1></td>
    </tr>
  </table>
</div>

              

<table width="" height="494" border="0" align="center" cellpadding="0" cellspacing="0"  style="background-repeat:no-repeat;">

  <tr valign="top">

    <td height="113"><table width="" height="145" border=0 align="center" cellPadding=4 cellSpacing=0 class="form_definitions">

        <TR>

          <TD height="26" valign="top"><p><span class="style2">
            
          </span>            
            <div class="money-hdr">
              
         <?

        include("../../dbase.php");

        $result=mysql_query("SELECT money from chatusers where user='$username' LIMIT 1");

        while($row = mysql_fetch_array($result)){

        $money = $row['money'];

          //$money=$row[money]/100;
        //strstr($row['money'],'.')?$money=$row['money']:$money=$row['money'].'.00';
               
        //echo $row['money'];
        echo "$money Tokens";



        } 

        

        

        ?>

			  
            </div><br />
              </span><br />
          </p></TD>
        </TR>

        <TR>

          <TD height="16" class="barbg"><p><strong><font color="#FFFFFF">
              </font><span style="color:#fff;" class="style1">Add funds to your member account using a credit or debit card</span><font color="#FFFFFF"><br />
                
              </font></strong><span style="color:#fff;" class="style1">Now you can pay even faster with our newly customized <?php echo $gateway['name']; ?> payment system. </span></p>
          </TD>
        </TR>

        <TR>

          <TD class="tokendivs">
<?php
$query=mysql_query("select * from package order by price asc");

while($row=mysql_fetch_object($query))
{
echo '<div class="token_box"><h1 class="tkn-bx-hdr">'.$row->name.'</h1><h2>'.$row->tokens.' Tokens</h2><h3>Price $'.$row->price.'</h3><div class="buy-btn"><a href="'.$gateway['file'].'?amt='.$row->price.'&usr='.$username.'&id='.$user_id.'"><img src="../../images/buy-tokens.png"></a></div></div>';
}
?>
<div style="clear:both;"></div>
            <!--  <div class="hoverbox2" align="center"><br>
                <input name="image" type="image" src="../../images/add-funds-button.png" alt="" width="155" height="40" border="0"/>
                <br>
                <br>
              </div>--></TD>
        </TR>

        <TBODY>
        </TBODY>

      </TABLE></td>

  </tr>
<script language="javascript" type="text/javascript">
function validte()
{
if (document.getElementById('txtAmount').value == "")
{
	alert("Please enter Amount");
	document.getElementById('txtAmount').focus();
	return false;
}
if (parseFloat(document.getElementById('txtAmount').value )<2.95)
{
	alert("Amount should be above $ 2.95");
	document.getElementById('txtAmount').focus();
	return false;
}
return true;
}
</script>
</table>

<p>&nbsp;</p>
<p>&nbsp;</p>
 <div class="disclaimer">
<!--Start Zombaio Code--><script src="https://secure.zombaio.com/External/loc-scr/?63304158wb3bddf77678896c569b2a7d5aae88d89"></script><!--End Zombaio Code-->
    </div>

<?
include("_members.footer.php");
?>