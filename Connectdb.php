<?php


$host="localhost:3308";
$user="root";
$password="12345";
$database="admins";
  
$connect=mysqli_connect($host,$user,$password,$database);


if(mysqli_connect_errno()){
    
    die("cannot connect to the database".mysqli_connect_errno());
    
}

else echo "Done";
?>


<?php





mysqli_close($connect);

?>