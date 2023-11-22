<?php
global $form_error, $form_success;
if($_GET["name"] or $_GET["phone"] or $_GET["email"]){
    if(!$_GET["name"] or !$_GET["phone"] or !$_GET["email"]){
        $form_error = true;
    }else{
        extract($_GET);
        $result = $sql->query("INSERT INTO `applications` VALUES (null, '".date('Y-m-d H:i:s')."', '$name', '$phone', '$email')");
        
        if(!$result){
            $form_error = true;
        }else{
            $form_success = true;
        } 
    }
}