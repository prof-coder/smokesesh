<?php
include('../../dbase.php');
    $sql2="select * from payzombaio where id='1'";
    $res2=mysql_query($sql2);
    $row=mysql_fetch_object($res2);



$user=$_REQUEST['user'];
$amt=$_REQUEST['tokens'];

$salt = $row->salt;
$vhash = md5($username.$amt.$salt);

if($_REQUEST['vhash']==$vhash)
{
$row=mysql_fetch_object(mysql_query("select * from package where price='$amt' "));
$amount=$row->tokens;
mysql_query("update chatusers set money=money+'$amount' where id='$id'  ");
mysql_query("insert into payments (id,ammount,method,details,date) values ('$vhash','$amt','zombaio','$user',UNIX_TIMESTAMP())");
}


?>