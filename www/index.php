<?php
try{
    $bdd = new PDO('mysql:host=db;dbname=prosit', 'root', 'root');

}catch(PDOException $err){
    echo $err;
}
//phpinfo();