<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");
header("Access-Control-Allow-Methods: *");


$method = $_SERVER['REQUEST_METHOD'];
switch($method) {


        
    case "GET":
        $data=array(
            
            'jojo'=>'https://www.youtube.com/embed/zumJJUL_ruM'
        
    );
    
    
        
        echo json_encode($data);
        break;


}
