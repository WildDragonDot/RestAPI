<?php
header('Content-Type:application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: PUT');
header('Access-Control-Allow-Headers:Access-Control-Allow-Headers,Content-Type,Access-Control-Allow-Methods,Authorization,X-Requested-With');

$data = json_decode(file_get_contents("php://input"),true);
$student_id = $data['sid'];
$student_name = $data['sname'];
$student_age = $data['sage'];
$student_city = $data['scity'];
include 'config.php';
$sql="UPDATE `apidata` SET `student_name`= '{$student_name}',`age`='{$student_age}',`city`= '{$student_city}' WHERE `id` = {$student_id}";

if(mysqli_query($conn,$sql)){
    echo json_encode(array('message'=>'Student recorded Updated','status'=> true));
}else{
    echo json_encode(array('message'=>'Student recorded not Updated','status'=> false));
}
// pass data like 
// {
//     "sid":"8",
//     "sname":"Aarya Vishwakarma",
//     "sage":"25",
//     "scity":"Narayanpur"

// }
?>