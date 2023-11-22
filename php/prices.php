<?php
function spaces($num){
    $less = $num % 1000;
    $thou = floor($num / 1000);

    return $thou." ".$less;
}

$result = $sql->query("SELECT * FROM `promo_prices` ORDER BY `order`");

while($row = $result->fetch_assoc()){
    extract($row);
    require "php/price_block.php";
}