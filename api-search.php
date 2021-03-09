<?php
header('Content-Type:application/json');
header('Access-Control-Allow-Origin: *');
//#NOTE : Their are two way to use the data as JSON format(RAW data ) or we can use get method to take the data from the url
//#1 Method: 
// $data = json_decode(file_get_contents("php://input"),true);
// $search_value = $data['search'];

// #2 Methods
$search_value = isset($_GET['search']) ? $_GET['search'] : die();
include 'config.php';
$sql="SELECT * FROM `apidata` WHERE `student_name` LIKE '%{$search_value}%'";
$result=mysqli_query($conn,$sql) or die("SQL Query Failed");

if(mysqli_num_rows($result) > 0){
    $output = mysqli_fetch_all($result,MYSQLI_ASSOC);
    echo json_encode($output);
}else{
    echo json_encode(array('message'=>'No Search Found','status'=> false));
}
//pass data like to search the data
// {
//     "search":"aarya"
// }
?>