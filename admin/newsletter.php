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
  height: 50px;
  z-index: 10;

}
-->

</style>






<form name="form1" method="post" action="newslettersent.php">
<p>

</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div align="center">
  <table width="1010" border="0">
    <tr>
      <td><div align="center">
        <h1>Marketing News Letter </h1>
      </div></td>
      </tr>
  </table>
</div>
<table width="679" border="0" align="center" cellpadding="0" cellspacing="1">
  <tr>
    <td bgcolor="#ffffff">
	<table width="100%"  border="0" bgcolor="#ffffff">
      <tr>
        <td class="big_title">Send To:</td>
        </tr>
      <tr>
        <td class="form_definitions">&nbsp;</td>
      </tr>
      <tr>
        <td class="form_definitions">
          <input name="members2" type="checkbox" id="members2" value="true">
          Members       </td>
        </tr>
      <tr>
        <td class="form_definitions"><input name="models" type="checkbox" id="models" value="true">
          Performers</td>
        </tr>
    </table>
	<table width="71%" height="150"  border="0" bgcolor="#ffffff">
      <tr>
        <td class="big_title">&nbsp;</td>
      </tr>
      <tr>
        <td class="big_title">Subject:          
          <input name="subject" type="text" id="subject" size="100" maxlength="32"></td>
      </tr>
      <tr>
        <td class="big_title">Message:</td>
      </tr>
      <tr>
        <td class="big_title"><textarea name="message" cols="125" rows="20" id="message"></textarea>
          <br>
          <input type="submit" name="Submit" value="Send Newsletter"></td>
      </tr>
    </table>	
	<p>&nbsp;    </p>	</td>
  </tr>
</table></form>
<?
include("_footer-admin.php")
?>

