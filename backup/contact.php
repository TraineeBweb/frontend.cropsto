<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require 'PHPMailer/src/Exception.php';
require 'PHPMailer/src/PHPMailer.php';
require 'PHPMailer/src/SMTP.php';


$captcha_response = $_POST['g-recaptcha-response'];
$secret_key = "6LcQnaMrAAAAANlPU4EL85OZRvAVog6hzqqjlLzV";
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

    if ($_SERVER["REQUEST_METHOD"] == "POST") {

        $name = $_POST['name'] ?? 'N/A';
        // $lastname = $_POST['last_name'] ?? 'N/A';
        $userEmail = $_POST['email'] ?? 'no-reply@example.com';
        $phone = $_POST['phone'] ?? 'N/A';
        $inquiry = $_POST['inquiry'] ?? 'N/A';
        $message = $_POST['message'] ?? 'No Message';



        $errors = [];


        if (empty($name)) {
            $errors[] = 'Name is required.';
        }


        // if (empty($lastname)) {
        //     $errors[] = 'Last Name is required.';
        // }
          if (empty($userEmail)) {
            $errors[] = 'Email Id is required.';
        }
        if (empty($phone)) {
            $errors[] = 'Phone number is required.';
        }
        if (empty($inquiry)) {
            $errors[] = 'Inquiry subject  is required.';
        }

        if (empty($message)) {
            $errors[] = 'Message is required.';
        }

        // Validate email format
        if (!empty($userEmail) && !filter_var($userEmail, FILTER_VALIDATE_EMAIL)) {
            $errors[] = 'Invalid email format.';
        }

        // Validate phone number (exactly 10 digits)
        if (!empty($phone) && !preg_match('/^[0-9]{10}$/', $phone)) {
            $errors[] = 'Invalid phone number. It must be exactly 10 digits.';
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
        $adminSubject = 'Contact Details';

        // Email to Admin
        $mail = new PHPMailer(true);
        try {
            $mail->SMTPDebug = SMTP::DEBUG_OFF;
            $mail->isSMTP();
            $mail->Host = 'smtp.gmail.com';
            $mail->SMTPAuth = true;
            $mail->Username = 'ashvin.empbweb@gmail.com'; // Use your SMTP username
            $mail->Password = 'eprs hgak jcgt fnuv'; // Use your SMTP password or App Password
            $mail->SMTPSecure = 'tls';
            $mail->Port = 587;

            $mail->setFrom('krupal.bweb@gmail.com', 'BT Water Treatment');
            $mail->addAddress($adminEmail); // Admin email


            $mail->isHTML(true);
            $mail->Subject = $adminSubject;
            $mail->Body = '<!DOCTYPE html>
    <html>
    <head>
        <title> Mail to Admin  </title>
    </head>
    <body>
        <div bgcolor="#FFFFFF" marginwidth="0" marginheight="0">
            <table width="900" border="5" align="center" cellpadding="0" cellspacing="0" style="border-color: #2e328d; padding: 10px; background-color: #ffffff">
                <tr>
                    <td>
                        <table width="900" style="padding: 5px">
                        <tbody>
                        <tr>
                            <td colspan="3">

                                <img src="#" alt="" title="" style="max-width: 130px" />
                            </td>
                        </tr>
                        <tr>
                        <td style="width: 100px" colspan="2">
                            <h3>Contact Details of:
                                 <label style="font-size: 14px; font-weight: bold">' . $name . '</label>
                            </h3>
                        </td>
                        <td style="width: 290px">
                            <h5 style="font-size: 15px; float: right; text-align: right">Date:&nbsp;' . date("d/m/Y") . '</h5>
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
                                        <span style="font-size: 14px; font-weight: bold;">First Name</span>
                                    </td>
                                    <td style="width: 90px">
                                        <span style="font-size: 14px; font-weight: bold; margin-left: 10px;">:</span>
                                    </td>
                                    <td style="width: 3500px">
                                        <label style="font-size: 14px;">' . $name . '</label>
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
                                        <label style="font-size: 14px;">' . $userEmail . '</label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 460px">
                                        <span style="font-size: 14px; font-weight: bold">Phone No.</span>
                                    </td>
                                    <td style="width: 90px">
                                        <span style="font-size: 14px; font-weight: bold; margin-left: 10px;">:</span>
                                    </td>
                                    <td style="width: 3500px">
                                        <label style="font-size: 14px;">' . $phone . '</label>
                                    </td>
                                </tr>
                                     
                                <tr>
                                <td style="width: 460px">
                                    <span style="font-size: 14px; font-weight: bold;">Inquiry</span>
                                </td>
                                <td style="width: 90px">
                                    <span style="font-size: 14px; font-weight: bold; margin-left: 10px;">:</span>
                                </td>
                                <td style="width: 3500px">
                                    <label style="font-size: 14px;">' . $inquiry . '</label>
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
                                    <label style="font-size: 14px;">' . $message . '</label>
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
                            <h3>"BT Water Treatment"</h3>
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


            $mail->setFrom('krupal.bweb@gmail.com', 'BT Water Treatment');
            $mail->addAddress($userEmail, "$name"); // The user who filled the form

            $mail->isHTML(true);
            $mail->Subject = "Thank you for contacting BT Water Treatment";


            $mail->isHTML(true); // Tell PHPMailer to use HTML
            $mail->Body = '<!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title> Mail to Client </title>
    </head>
    <body>
        <div bgcolor="#FFFFFF" marginwidth="0" marginheight="0">
            <table width="900" border="5" align="center" cellpadding="0" cellspacing="0" style="border-color: #2e328d; padding: 10px; background-color: #ffffff">
                <tr>
                    <td>
                        <table width="900" style="padding: 5px">
                            <tbody>
                                <tr>
                                    <td colspan="3">

                                        <img src="#" alt="" title="" style="max-width: 130px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px" colspan="2">
                                        <h3>
                                          Dear <label style="font-size: 14px; font-weight: bold">' . $name . ',</label>
                                        </h3>
                                    </td>
                                    <td style="width: 290px">
                                        <h5 style="font-size: 15px; float: right; text-align: right">Date:&nbsp;&nbsp;' . date("d/m/Y") . '</h5>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <hr style="border-color:#0a0f4e;" />
                                    </td>
                                </tr>
                                <td colspan="3">
                                     We BT Water Treatment Team thank you for contacting us with "BT Water Treatment" through our contact us form on our website.<br /><br />
                                            Please be rest assured that your enquiry will have our best attention and we shall get in touch with you shortly.<br /><br />
                                            If you do not receive a response from us within two working days we request you to write to us on <a href="
info@btwatertreatment.com">
                                            
info@btwatertreatment.com</a><br /><br />
                                         
                                            <br /><br />
                                            Best Regards,<br /><br /><br />
                                            Team  "BT Water Treatment"
                                    </td>
                                 <tr>
                                    <td colspan="3">
                                           <hr style="border-color: #0a0f4e;" />
                                        <h3> "BT Water Treatment".</h3>


                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <span style="font-size: 11px; color: #0a0f4e">
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
            
            header('Location: thankyou.html');
            exit; // Ensure script execution stops after redirection
        } catch (Exception $e) {
            echo 'Confirmation message could not be sent. Mailer Error: ' . $mail->ErrorInfo;
        }
    }

    
} else {
    echo 'Invalid form submission.';
    
}
