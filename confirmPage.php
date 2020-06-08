<?php
session_start();
include 'dbConnect.php';
if (!isset($_SESSION['username'])) {
    header('location:  ./index.php');
}
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="confirmPage.css">
    <title>Order Placed</title>
</head>
<body>
<header>
    <div class="nav">
        <div class="nav-area">
        <a id="home" href="./home.php">Mobile Store</a>
        </div>
    </div>
</header>
    <div class="thanks">
        <h1>Thanks For Buying!!!</h1>
        <p>Your Order Will Be Placed Shortly.</p>
    </div>
    <div class="dd">

    </div>
</body>
</html>

<?php
if (isset($_GET['confirm'])) {
    $name = mysqli_real_escape_string($con, $_SESSION['username']);
    $pName = $_SESSION['name'];
    $pImage = $_SESSION['image'];
    $pPrice = $_SESSION['price'];
    $query = "SELECT * FROM" . $name;
    $result = mysqli_query($con, $query);
    if ($result == false) {
        $sql = "CREATE TABLE  $name (
                Id INT(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
                pName VARCHAR(100) NOT NULL,
                pImage VARCHAR(100) NOT NULL,
                pPrice VARCHAR(70) NOT NULL
            )";
        $result = mysqli_query($con, $sql);
        $insert_query = "INSERT INTO $name (pName,pImage,pPrice)
                                   VALUES ('$pName' , '$pImage' , '$pPrice')";
        $result = mysqli_query($con, $insert_query);
    } else {
        $insert_query = "INSERT INTO $name (pName,pImage,pPrice)
                                   VALUES ('$pName' , '$pImage' , '$pPrice')";
        $result = mysqli_query($con, $insert_query);
    }

}
?>

<style>
    .dd{
        height: 100px;
        width: 100%;
    }
</style>
<?php
mysqli_close($con);
?>