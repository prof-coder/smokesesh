<style>

.help{
	color:000;
}

.footerSticky{
	margin-top:10%;
}

</style>


<?php
include("_contact.header.php");

include("../settings.php");



if(isset($_POST['submit'])):
    if(isset($_POST['g-recaptcha-response']) && !empty($_POST['g-recaptcha-response'])):

 
		//get verify response data
        $verifyResponse = file_get_contents('https://www.google.com/recaptcha/api/siteverify?secret='.$secret.'&response='.$_POST['g-recaptcha-response']);
        $responseData = json_decode($verifyResponse);
		
		$name = !empty($_POST['name'])?$_POST['name']:'';
		$email = !empty($_POST['email'])?$_POST['email']:'';
		$message = !empty($_POST['message'])?$_POST['message']:'';
        if($responseData->success):
			//contact form submission code
			$to = $contactemail;
			$subject =  $name;
			$htmlContent = "
				<h1>Contact request details</h1>
				<p><b>Name: </b>".$name."</p>
				<p><b>Email: </b>".$email."</p>
				<p><b>Message: </b>".$message."</p>
			";
			// Always set content-type when sending HTML email
			$headers = "MIME-Version: 1.0" . "\r\n";
			$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
			// More headers
			$headers .= 'From:'.$name.' <'.$email.'>' . "\r\n";
			//send email
			@mail($to,$subject,$htmlContent,$headers);
			
            $succMsg = 'Your message was submitted successfully.';
			$name = '';
			$email = '';
			$message = '';
        else:
            $errMsg = 'Robot verification failed, please try again.';
        endif;
    else:
        $errMsg = 'Click the verification box to prove you are human.';
    endif;
else:
    $errMsg = '';
    $succMsg = '';
	$name = '';
	$email = '';
	$message = '';
endif;
?>
<html>
    <head>
      <title></title>
       <script src="https://www.google.com/recaptcha/api.js" async defer></script>
       <link href="css/style.css" rel='stylesheet' type='text/css' />
    </head>
    <body>
    <div class="registration">
		
          <div class="help"><h1>Need Help? Contact us!</h1></div>

        <?php if(!empty($errMsg)): ?><div class="errMsg"><?php echo $errMsg; ?></div><?php endif; ?>
        <?php if(!empty($succMsg)): ?><div class="succMsg"><?php echo $succMsg; ?></div><?php endif; ?>
		<div class="form-info">
			<form action="" method="POST">
				<input type="text" class="text" value="<?php echo !empty($name)?$name:''; ?>" placeholder="Your full name" name="name" >
                <input type="text" class="text" value="<?php echo !empty($email)?$email:''; ?>" placeholder="Email adress" name="email" >
                <textarea type="text" placeholder="Message..." required="" name="message"><?php echo !empty($message)?$message:''; ?></textarea>
				<div class="g-recaptcha" data-sitekey="<? echo $siteKey; ?>"></div>
				<input type="submit" name="submit" value="SUBMIT">
			</form>
		</div>			
		<div class="clear"> </div>
	</div>
  </body>
</html>
 <div class="disclaimer" style="margin-bottom:0px;">
<!--Start Zombaio Code--><script src="https://secure.zombaio.com/External/loc-scr/?63304158wb3bddf77678896c569b2a7d5aae88d89"></script><!--End Zombaio Code-->
    </div>
<div class="footerSticky">
<?PHP
include("_contact.footer.php");
?>
</div>