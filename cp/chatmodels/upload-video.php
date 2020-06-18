<?php if (!isset($_COOKIE["id"]) || $_COOKIE['usertype']!="chatmodels" )
{

header("location: ../../login.php");

} else{

include("../../dbase.php");


$result=mysql_query("SELECT user from $_COOKIE[usertype] WHERE id='$_COOKIE[id]' LIMIT 1");



	while($row = mysql_fetch_array($result)) 

	{	$username=$row['user'];	}

}

mysql_free_result($result);

$newfilename = "preview.mp4";


echo $username;
 
extract($_POST);
 
$target_dir = "../../models/".$username."/";
 
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);

move_uploaded_file($_FILES["file"]["fileToUpload"], "../../models/".$username."/" . $newfilename);
 
if($upd)
{
$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
 
if($imageFileType != "mp4")
{
    echo "File Format Not Suppoted";
} 
 
else
{
 
$video_path=$_FILES['fileToUpload']['name'];
 
mysql_query("insert into video(video_name) values('$video_path')");
 
move_uploaded_file($_FILES["fileToUpload"]["tmp_name"],$target_file);
 
echo "uploaded ";
 
}
 
}
 
 
 
 
//display all uploaded video
 
if($disp)
 
{
 
$query=mysql_query("select * from video");
 
 while($all_video=mysql_fetch_array($query))
 
 {
?>
 
 <video width="300" height="200" controls>
 <source src="test_upload/<?php echo $all_video['video_name']; ?>" type="video/mp4">
 </video> 
 
 <?php } } ?>
 
 
 
 
 
 
	
<form method="post" enctype="multipart/form-data">
 
<table border="1" style="padding:10px">
 
<tr>
 
<Td>Upload  Video</td></tr>
 
<Tr><td><input type="file" name="fileToUpload"/></td></tr>
 
<tr><td>
 
<input type="submit" value="Uplaod Video" name="upd"/>
 
<input type="submit" value="Display Video" name="disp"/>
 
</td></tr>
 
</table>
 
</form>
 
 
 
 
 
 