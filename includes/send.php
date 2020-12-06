<?php
//ini_set('display_errors',1);
header('Access-Control-Allow-Origin*'); 
header('Content-Type: application/json; charset=UTF-8');  
$results =[];
$visitor_name = '';
$visitor_email = '';
$visitor_message = '';


if(empty($_POST['firstname'])){
    $results['message'] = 'First name is required.';
    echo json_encode($results);
    die();  
} else {
    $visitor_name = filter_var($_POST['firstname'], FILTER_SANITIZE_STRING);
}

if (empty($_POST['lastname'])) {
    $results['message'] = 'Last name is required.';
    echo json_encode($results);
    die();
} else {
    $visitor_name .= ' '.filter_var($_POST['lastname'], FILTER_SANITIZE_STRING);
}

if (empty($_POST['email'])){
    $results['message'] = 'Email is required.';
    echo json_encode($results);
    die();
} else {
    $visitor_email = filter_var($_POST['email'], FILTER_VALIDATE_EMAIL);
}

// Validate optional fields

if (isset($_POST['message'])){
    $visitor_message = filter_var(htmlspecialchars($_POST['message']), FILTER_SANITIZE_STRING);
}

$results['name'] = $visitor_name;
$results['message'] = $visitor_message;

// 2. Prepare the email [Prepare out the label and put on the package / prepare it in a certain format.]

$email_recepient = 'tisukviktoria@gmail.com';
$email_subject = 'Inquiry from Portfolio Site';

$email_message = sprintf('Name: %s, Email: %s, Topic: %s, Message: %s', $visitor_name, $visitor_email, $visitor_message);  

$email_headers = array(
    // best practice, but it may need to you have a mail setup in noreply@yourdomain.ca
    // 'From'=>'noreply@viktoriiatyshchuk.com',
    'Reply-To' => $visitor_email,
    'From'=> $visitor_email   
);

// 3. Send out the email [Send out the package]
$email_result = mail($email_recepient, $email_subject, $email_message, $email_headers);

if($email_result) {
    $results['message'] = sprintf('Thank you for your request, %s. You should receive a reply within 48 hours', $visitor_name);
} else {
    $results['message'] = sprintf('%s, we are sorry, but the email did not send.');
}

echo json_encode($results);

?>