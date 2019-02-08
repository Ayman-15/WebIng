<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
require"Cars.inc";

$mycar=new Cars();


$mycar->module="Toyota";
$mycar->year="2013";
$mycar->name="Crolla";

echo $mycar-> module;
echo $mycar-> year;
echo $mycar-> name;










?>