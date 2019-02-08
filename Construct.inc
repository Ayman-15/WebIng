<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Construct{
    
    public $Name;
    public $Age;
    public $DataBirth;
    
    function __construct($Na,$Ag,$DB) {
        
         $this->Name = $Na;
         $this->Age = $Ag;
         $this->DataBirth = $DB;
         
    }
    
    
    
    
}