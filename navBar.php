<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=`device-width`, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Phones</title>
</head>
<body>
<div class="nav">
        <div class="nav-area">
             <ul>
                 <?php
if (isset($_SESSION['username'])) {
    ?>
                        <li><a id="home" href="./home.php">Mobile Store</a></li>
                        <div class="info">
                            <li id="name">Hi <?php echo $_SESSION['username']; ?></li>
                            <div class="order">
                                <a href="./order.php">Orders</a>
                            </div>
                        </div>
                        <li><a id="signup-link" href="./logout.php">Logout</a></li>
                <?php
} else {
    ?>
                        <li><a id="home" href="./index.php">Mobile Store</a></li>
                        <li><a id="signin-link" href="./signin.php">Sign in</a></li>
                        <li><a id="signup-link" href="./signup.php">Sign Up</a></li>
                <?php
}
?>
             </ul>

             <form action="./phoneSearch.php" method="GET">
                 <input type="search" id="search_box" placeholder="" value="Search..."  name="Search" onmousedown="active()" onmouseout="inactive()">
                 <input type="submit" value="Search" name="Search_btn">
             </form>
        </div>
</div>
</body>
</html>

<style>

#name{
    font-size: 17px;
    text-transform: uppercase;
    padding-top: 1.5px;
}
</style>
