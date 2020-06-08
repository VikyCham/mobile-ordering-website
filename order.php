<?php
session_start();
include 'dbConnect.php';
if (!isset($_SESSION['username'])) {
    header('location : ./index.php');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="order.css">
    <title>Your Orders</title>
</head>
<body>
<header>
    <div class="nav">
        <div class="nav-area">
        <a id="home" href="./home.php">Mobile Store</a>
        </div>
    </div>
</header>
    <?php
$uname = $_SESSION['username'];
$select_q = "SELECT * FROM $uname";
$result = mysqli_query($con, $select_q);
$qResult = mysqli_num_rows($result);
if ($qResult > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        ?>
                <div class="orders">
                    <div class="order-details">
                        <img id="phone-image" src ="<?php echo $row['pImage']; ?>" >
                        <h1 name="P_name"><?php echo $row['pName']; ?></h1>
                        <h3>&#x20b9; <?php echo $row['pPrice']; ?></h3>
                    </div>
                </div>
    <?php
}
} else {
    echo '<h3 id="nothing"> You ordered nothing.<a href="./index.php">Start Shopping<?a></h3> ';
}
?>
</body>
</html>
<?php
mysqli_close($con);
?>