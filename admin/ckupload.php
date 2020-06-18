<?php 
  $root = trim($_SERVER['HTTP_HOST'], "/");
$url = "$root/admin/images/".time()."_".$_FILES["upload"]["name"];

 //extensive suitability check before doing anything with the file…
    if (($_FILES['upload'] == "none") OR (empty($_FILES['upload']['name'])) )
    {
       $message = "No file uploaded.";
    }
    else if ($_FILES['upload']["size"] == 0)
    {
       $message = "The file is of zero length.";
    }
    else if (($_FILES['upload']["type"] != "image/pjpeg") AND ($_FILES['upload']["type"] != "image/jpeg") AND ($_FILES['upload']["type"] != "image/png"))
    {
       $message = "The image must be in either JPG or PNG format. Please upload a JPG or PNG instead.";
    }
    else if (!is_uploaded_file($_FILES['upload']["tmp_name"]))
    {
       $message = "You may be attempting to hack our server. We1re on to you; expect a knock on the door sometime soon.";
    }
    else {
      $message = "";
      $move = @ move_uploaded_file($_FILES['upload']['tmp_name'], $url);
      if($json = file_get_contents('images_list.json')){
         $array = json_decode($json, true);
         $uri = array("image" => $url);
         array_push($array, $uri);
         $json = json_encode($array);
         file_put_contents('images_list.json', $json); 
      }else{
         $array = array("image" => $url);
         $json = json_encode($array);
         file_put_contents('images_list.json', $json); 
      }
      if(!$move)
      {
         $message = "Error moving uploaded file. Check the script is granted Read/Write/Modify permissions.";
      }
      //$url = "../" . $url;
    }
$funcNum = $_GET['CKEditorFuncNum'] ;
echo "<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction($funcNum, '$url', '$message');</script>";
?>