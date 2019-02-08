<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php
        require "Employers.inc";

$Emp1 =new Employers();

$Emp1->Name="Ayman";
$Emp1->Salary="10000";
$Emp1->Id="3073";
$Emp1->SetCreditCard("91569");


echo "Name :".$Emp1->Name."</br>";
echo "Salary :".$Emp1->Salary."</br>";
echo "Id :".$Emp1->Id."</br>"; 
echo  "Credit Card :".$Emp1->GetCreditCard();












        
        ?>
    </body>
</html>
