<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require 'PHPMailer/src/Exception.php';
require 'PHPMailer/src/PHPMailer.php';  
require 'PHPMailer/src/SMTP.php';  
$captcha_response = $_POST['g-recaptcha-response'];
$secret_key = "6LeBraQrAAAAAFBaphjmEQObs3xxn0B-QOs7UXWm";
$verify_url = "https://www.google.com/recaptcha/api/siteverify";
$data = array(
    'secret' => $secret_key,
    'response' => $captcha_response
);
$options = array(
    'http' => array(
        'method' => 'POST',
        'header' => 'Content-Type: application/x-www-form-urlencoded',
        'content' => http_build_query($data)
    )
);

if (empty($_POST['g-recaptcha-response'])) {
    echo "Captcha not attempted. Please try again.";
    exit;
}

$context  = stream_context_create($options);
$response = file_get_contents($verify_url, false, $context);
$response_keys = json_decode($response, true);

if ($response_keys["success"]) {

    if ($_SERVER["REQUEST_METHOD"] == "POST"){

        $firstName = $_POST['first_name'] ?? 'N/A';
        $userEmail = $_POST['email_id'] ?? 'no-reply@example.com';
        $phone = $_POST['phone_no'] ?? 'no-reply@example.com';
        $subject = $_POST['subject'] ?? 'N/A';
        $massage = $_POST['massage'] ?? 'No message provided';


        // Validation flags
        $errors = [];

        // Validate non-empty fields
        if (empty($firstName)) {
            $errors[] = 'First Name is required.';
        }
        if (empty($userEmail)) {
            $errors[] = 'Email is required.';
        }
        if (empty($phone)) {
            $errors[] = 'Phone is required.';
        }
        if (empty($subject)) {
            $errors[] = 'Subject is required.';
        }
        if (empty($massage)) {
            $errors[] = 'Message is required.';
        }

        // Validate email format
        if (!empty($userEmail) && !filter_var($userEmail, FILTER_VALIDATE_EMAIL)) {
            $errors[] = 'Invalid email format.';
        }

        // If there are validation errors, display them
        if (!empty($errors)) {
            echo '<ul>';
            foreach ($errors as $error) {
                echo '<li>' . htmlspecialchars($error) . '</li>';
            }
            echo '</ul>';
            exit; // Stop execution if validation fails
        }


        // Admin Email
        $adminEmail = 'krupal.bweb@gmail.com';
        $adminSubject = 'New Enquiry Received';

        // Email to Admin
        $mail = new PHPMailer(true);

        try {
            // Server settings
            $mail->SMTPDebug = SMTP::DEBUG_OFF;
            $mail->isSMTP();
            $mail->Host = 'smtp.gmail.com';
            $mail->SMTPAuth = true;
            $mail->Username = 'ashvin.empbweb@gmail.com'; // Use your SMTP username
            $mail->Password = 'eprs hgak jcgt fnuv'; // Use your SMTP password or App Password
            $mail->SMTPSecure = 'tls';
            $mail->Port = 587;

            // Recipients
            $mail->setFrom('krupal.bweb@gmail.com', 'Cropsto');
            $mail->addAddress($adminEmail);

            // Attachments
            if (isset($_FILES['attachment']) && $_FILES['attachment']['error'] == UPLOAD_ERR_OK) {
                $mail->addAttachment($_FILES['attachment']['tmp_name'], $_FILES['attachment']['name']);
            }

            // Content
            $mail->isHTML(true);
            $mail->Subject = $adminSubject;
            // The body content of the admin email goes here
            $mail->Body = '<!DOCTYPE html>
            <html >
            <head>
                <title> Mail to Admin  </title>
            </head>
            <body>
                <div bgcolor="#FFFFFF" marginwidth="0" marginheight="0">
                    <table width="900" border="5" align="center" cellpadding="0" cellspacing="0" style="border-color: #005f41; padding: 10px">
                        <tr>
                            <td>
                                <table width="900" style="padding: 5px">
                                <tbody>
                                <tr>
                                    <td colspan="3">
            
                                        <img src="https://cropsto.com/images/logo/logo.png" alt="" title="" style="max-width: 200px" />
                                    </td>
                                </tr>
                                <tr>
                                <td style="width: 100px" colspan="2">
                                    <h3>Contact Page Details of:
                                        <label style="font-size: 14px; font-weight: bold">'.$firstName.'</label>
                                    </h3>
                                </td>
                                <td style="width: 290px">
                                    <h5 style="font-size: 15px; float: right; text-align: right">Date:&nbsp;'.date("d/m/Y").'</h5>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <hr />
                                </td>
            
                            </tr>
                            <tr>
                                <td>
                                    <table width="780" style="padding-left: 10px">
                                        <tr>
                                            <td style="width: 460px">
                                                <span style="font-size: 14px; font-weight: bold;">Name</span>
                                            </td>
                                            <td style="width: 90px">
                                                <span style="font-size: 14px; font-weight: bold; margin-left: 10px;">:</span>
                                            </td>
                                            <td style="width: 3500px">
                                                <label style="font-size: 14px;">'.$firstName.'</label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 460px">
                                                <span style="font-size: 14px; font-weight: bold">Email</span>
                                            </td>
                                            <td style="width: 90px">
                                                <span style="font-size: 14px; font-weight: bold; margin-left: 10px;">:</span>
                                            </td>
                                            <td style="width: 3500px">
                                                <label style="font-size: 14px;">'.$userEmail.'</label>
                                            </td>
                                        </tr>
                                        
                                        <tr>
                                            <td style="width: 460px">
                                                <span style="font-size: 14px; font-weight: bold;">Phone number</span>
                                            </td>
                                            <td style="width: 90px">
                                                <span style="font-size: 14px; font-weight: bold; margin-left: 10px;">:</span>
                                            </td>
                                            <td style="width: 3500px">
                                                <label style="font-size: 14px;">' .$phone.'</label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 460px">
                                                <span style="font-size: 14px; font-weight: bold;">Subject</span>
                                            </td>
                                            <td style="width: 90px">
                                                <span style="font-size: 14px; font-weight: bold; margin-left: 10px;">:</span>
                                            </td>
                                            <td style="width: 3500px">
                                                <label style="font-size: 14px;">' .$subject.'</label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 460px">
                                                <span style="font-size: 14px; font-weight: bold;">Message</span>
                                            </td>
                                            <td style="width: 90px">
                                                <span style="font-size: 14px; font-weight: bold; margin-left: 10px;">:</span>
                                            </td>
                                            <td style="width: 3500px">
                                                <label style="font-size: 14px;">'.$massage.'</label>
                                            </td>
                                        </tr>  
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <hr />
                                </td>
                            </tr>
            
                            <tr>
                                <td colspan="3">
                                    <h3>"Cropsto"</h3>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <span style="font-size: 11px; color: #545353">
                                        <b>Please do not reply to this email address as this is an automated email.</b></span>
                                </td>
                            </tr>
                                <!-- Rest of your email content here -->
                            </tbody>
                                </table>
                            </td>
                        </tr>
                    </table>
                </div>
            </body>
            </html>';

            $mail->send();
            echo 'Admin message has been sent.';
        } catch (Exception $e) {
            echo 'Message could not be sent to admin. Mailer Error: ' . $mail->ErrorInfo;
        }

        // Confirmation Email to User
        $mail = new PHPMailer(true);
        try {
            $mail->SMTPDebug = SMTP::DEBUG_OFF;
            $mail->isSMTP();
            $mail->Host = 'smtp.gmail.com';
            $mail->SMTPAuth = true;
            $mail->Username = 'ashvin.empbweb@gmail.com'; // Same SMTP username
            $mail->Password = 'eprs hgak jcgt fnuv'; // Same SMTP password or App Password
            $mail->SMTPSecure = 'tls';
            $mail->Port = 587;

            $mail->setFrom('krupal.bweb@gmail.com', 'Cropsto');
            $mail->addAddress("$userEmail", "$firstName"); // The user who filled the form

            $mail->isHTML(true);
            $mail->Subject = "Thank you for contacting Cropsto!";
            // Here you can include the HTML content you've provided for the user email
            $mail->isHTML(true); // Tell PHPMailer to use HTML
            $mail->Body = '<!DOCTYPE html>
            <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <title> Mail to Client </title>
            </head>
            <body>
                <div bgcolor="#FFFFFF" marginwidth="0" marginheight="0">
                    <table width="900" border="5" align="center" cellpadding="0" cellspacing="0" style="border-color: #005f41; padding: 10px">
                        <tr>
                            <td>
                                <table width="900" style="padding: 5px">
                                    <tbody>
                                        <tr>
                                            <td colspan="3">
            
                                                <img src="https://cropsto.com/images/logo/logo.png" alt="" title="" style="max-width: 200px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px" colspan="2">
                                                <h3>
                                                Dear <label style="font-size: 14px; font-weight: bold">'. $firstName .',</label>
                                                </h3>
                                            </td>
                                            <td style="width: 290px">
                                                <h5 style="font-size: 15px; float: right; text-align: right">Date:&nbsp;&nbsp;'.date("d/m/Y").'</h5>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="3">
                                                <hr style="border-color:#005f41;" />
                                            </td>
                                        </tr>
                                        <td colspan="3">
                                            We Cropsto Team thank you for contacting us with "Cropsto" through our contact us form on our website.<br /><br />
                                                    Please be rest assured that your enquiry will have our best attention and we shall get in touch with you shortly.<br /><br />
                                                    If you do not receive a response from us within two working days we request you to write to us on <a href="mailto:sales@cropsto.in">
                                                sales@cropsto.in</a><br /><br />
                                                    We look forward to building a strong business association with your organization.
                                                    <br /><br />
                                                    Best Regards,<br /><br /><br />
                                                    Team  "Cropsto"
                                            </td>
                                        <tr>
                                            <td colspan="3">
                                                <hr style="border-color: #005f41;" />
                                                <h3> "Cropsto".</h3>
            
            
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="3">
                                                <span style="font-size: 11px; color: #005f41">
                                                    <b>Please do not reply to this email address as this is an automated email.</b></span>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
            
                            </td>
                        </tr>
                    </table>
            
                </div>
            </body>
            </html>';

            $mail->send();
            echo 'Confirmation message has been sent to the user.';
        } catch (Exception $e) {
            echo 'Confirmation message could not be sent. Mailer Error: ' . $mail->ErrorInfo;
        }

        // Confirmation Email to User
        $mail = new PHPMailer(true);
        try {
            // Your existing email sending code...

            // Redirect after sending email
            header('Location: thanks.html');
            exit; // Ensure script execution stops after redirection
        } catch (Exception $e) {
            echo 'Confirmation message could not be sent. Mailer Error: ' . $mail->ErrorInfo;
        }
    }
}
else{
    echo 'Invalid form submission.';
    
}
?>