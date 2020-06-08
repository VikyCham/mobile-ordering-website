<?php
session_start();
if (!isset($_SESSION['username'])) {
    header('location: ./index.php');
}

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Mobile Store</title>
    <link rel="stylesheet" type="text/css" href="index.css">
</head>
<body>

<!--Header Portion-->
 <header>
     <?php
include 'navBar.php';
?>
    <div class="heading">
        <h1>Shop Phone Easily</h1>
    </div>
</header>

<!--Section Portion-->
<section>
<div class="phone-container">
        <div class="phones">
            <a href="./phoneSelect.php?title=Redmi Note 6 Pro">
                <img src="images\Phones2\MI\RedmiNote6Pro.jpg" alt="Redmi Note 6 Pro">
                <h4>Redmi Note 6 Pro</h4>
            </a>
        </div>
        <div class="phones">
            <a href="./phoneSelect.php?title=Oppo F11 Pro">
                <img src="images\Phones2\Oppo\OppoF11Pro.jpg" alt="Oppo F11 Pro">
                <h4>Oppo F11 Pro</h4>
            </a>
        </div>
        <div class="phones">
            <a href="./phoneSelect.php?title=Realme 3 Pro">
                <img src="images\Phones2\Realme\Realme3Pro.jpg" alt="Realme 3 Pro">
                <h4>Realme 3 Pro</h4>
            </a>
        </div>
        <div class="phones">
            <a href="./phoneSelect.php?title=Samsung Galaxy A70">
                <img src="images\Phones2\Samsung\SamsungGalaxyA70.jpg" alt="Samsung Galaxy A70">
                <h4>Samsung Galaxy A70</h4>
            </a>
        </div>
        <div class="phones">
            <a href="./phoneSelect.php?title=Vivo V15 Pro">
                <img src="images\Phones2\Vivo\VivoV15Pro.jpg" alt="Vivo V15 Pro">
                <h4>Vivo V15 Pro</h4>
            </a>
        </div>
        <div class="phones">
            <a href="./phoneSelect.php?title=Realme U1">
                <img src="images\Phones2\Realme\RealmeU1.jpg" alt="Realme U1">
                <h4>Realme U1</h4>
            </a>
        </div>
        <div class="phones">
            <a href="./phoneSelect.php?title=Honor 8X">
                <img src="images\Phones2\Honor\Honor8X.jpg" alt="Honor 8X">
                <h4>Honor 8X</h4>
            </a>
        </div>
        <div class="phones">
            <a href="./phoneSelect.php?title=Samsung Galaxy On Nxt">
                <img src="images\Phones2\Samsung\SamsungGalaxyOnNxt.jpg" alt="Samsung Galaxy On Nxt">
                <h4>Samsung Galaxy On Nxt</h4>
            </a>
        </div>
        <div class="phones">
            <a href="./phoneSelect.php?title=Apple iPhone XR">
                <img src="images\Phones2\Apple\AppleiPhoneXR.jpg" alt="Apple iPhone XR">
                <h4>Apple iPhone XR</h4>
            </a>
        </div>
        <div class="phones">
            <a href="./phoneSelect.php?title=Google Pixel 3">
                <img src="images\Phones2\GooglePixel\GooglePixel3.jpg" alt="Google Pixel 3">
                <h4>Google Pixel 3</h4>
            </a>
        </div>
        <div class="phones">
            <a href="./phoneSelect.php?title=Redmi Note 7 Pro">
                <img src="images\Phones2\MI\RedmiNote7Pro.jpg" alt="Redmi Note 7 Pro">
                <h4>Redmi Note 7 Pro</h4>
            </a>
        </div>
        <div class="phones">
            <a href="./phoneSelect.php?title=Asus Zenfone Max Pro M1">
                <img src="images\Phones2\Asus\AsusZenfoneMaxProM1.jpg" alt="AsusZenfone Max Pro M1">
                <h4>Asus Zenfone Max Pro M1</h4>
            </a>
        </div>
        <div class="phones">
            <a href="./phoneSelect.php?title=Google Pixel 3a XL">
                <img src="images\Phones2\GooglePixel\GooglePixel3AXL.jpg" alt="Google Pixel 3a XL">
                <h4>Google Pixel 3a XL</h4>
            </a>
        </div>
        <div class="phones">
            <a href="./phoneSelect.php?title=Honor 8C">
                <img src="images\Phones2\Honor\Honor8C.jpg" alt="Honor 8C">
                <h4>Honor 8C</h4>
            </a>
        </div>
        <div class="phones">
            <a href="./phoneSelect.php?title=Nokia 6.1 Plus">
                <img src="images\Phones2\Nokia\Nokia6.1Plus.jpg" alt="Nokia 6.1 Plus">
                <h4>Nokia 6.1 Plus</h4>
            </a>
        </div>
    </div>
</section>
<footer>
    <div class="footer">
        <p>&copy; Copyright 2019 By Vikas Chamoli. All Rights Reserved</p>
    </div>
</footer>
<script src="index.js"></script>
</body>
</html>