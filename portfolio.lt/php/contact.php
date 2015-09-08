<?php
//error_reporting(-1);
//ini_set('display_errors', 'On');
//set_error_handler("var_dump");
ini_set("sendmail_from", "gulbickij.pavel@gmail.com");
//ini_set("sendmail_path", "gulbickij.pavel@gmail.com");
if(isset($_POST['email'])) {

    $email_to = "gulbickij.pavel@gmail.com";
    $email_subject = "Mail";

    function died($error) {
 
        echo "We are very sorry, but there were error(s) found with the form you submitted. ";
        echo "These errors appear below.<br /><br />";
        echo $error."<br /><br />";
        echo "Please go back and fix these errors.<br /><br />";
        die();
    }
    // validation expected data exists
    if(!isset($_POST['company']) ||
        !isset($_POST['nameSurname']) ||
        !isset($_POST['email']) ||
        !isset($_POST['phone']) ||
        !isset($_POST['comments'])) {
        died('We are sorry, but there appears to be a problem with the form you submitted.');       
    }
    $company = $_POST['company']; // required
    $nameSurname = $_POST['nameSurname']; // required
    $email = $_POST['email']; // required
    $phone = $_POST['phone']; // not required
    $comments = $_POST['comments']; // required
    $error_message = "";
    $email_exp = '/^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$/';
 
  if(!preg_match($email_exp,$email)) {
    $error_message .= 'The Email Address you entered does not appear to be valid.<br />';
  }
 
    $string_exp = "/^[A-Za-z .'-]+$/";
 
  if(!preg_match($string_exp,$nameSurname)) {
    $error_message .= 'The First Name you entered does not appear to be valid.<br />';
  }
 
  if(!preg_match($string_exp,$company)) {
    $error_message .= 'The Company you entered does not appear to be valid.<br />';
  }
 
  if(strlen($comments) < 2) {
    $error_message .= 'The Comments you entered do not appear to be valid.<br />';
  }
  
  if(strlen($error_message) > 0) {
    died($error_message);
  }
 
    $email_message = "Form details below.\n\n";
    
    function clean_string($string) {
      $bad = array("content-type","bcc:","to:","cc:","href");
      return str_replace($bad,"",$string);
    }
    
    $email_message .= "Company: ".clean_string($company)."\n";
    $email_message .= "Sender: ".clean_string($nameSurname)."\n";
    $email_message .= "Email: ".clean_string($email)."\n";
    $email_message .= "Telephone: ".clean_string($phone)."\n";
    $email_message .= "Comments: ".clean_string($comments)."\n";

// create email headers
 
$headers = 'From: '.$email."\r\n".
'Reply-To: '.$email."\r\n" .
'X-Mailer: PHP/' . phpversion();
@mail($email_to, $email_subject, $email_message, $headers);  
?>
<!-- include your own success html here -->

<?php
  echo  "<script>
  alert('Laiškas sekmingai išsiųstas');
  window.location = '../index.php';
    </script>";
    
  /*  echo phpinfo();*/
  /*  header("Location: /portfolio/portfolio.lt/index.php?mail=success");*/
}
?>