<?php
session_start();
include 'dbConnect.php';
if (!isset($_SESSION['username'])) {
    header('location:  ./signin.php');
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="buyPage.css">
    <title>Buy</title>
</head>
<body>
    <header>
    <div class="nav">
        <div class="nav-area">
        <a id="home" href="./home.php">Mobile Store</a>
        </div>
    </div>
    </header>
    <main>
        <div class="container">
            <div class="address-area">
                <h2>Delivery Address</h2>
                <input type="text" id="address" onkeyup = "alertfun()">
            </div>
            <div class="order-details">
            <?php
$title = mysqli_real_escape_string($con, $_GET['title']);
$sql_query = "SELECT * FROM phones WHERE P_Name= '$title' ";
$result = mysqli_query($con, $sql_query);
$queryResults = mysqli_num_rows($result);
if ($queryResults > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        ?>
                <h2>Order Details</h2>
                <img id="phone-image" src ="<?php echo $row['P_Image'];
        $_SESSION['image'] = $row['P_Image']; ?>" >
                <h1 name="P_name"><?php echo $row['P_Name'];
        $_SESSION['name'] = $row['P_Name']; ?></h1>
                <h3>&#x20b9; <?php echo $row['P_Price'];
        $_SESSION['price'] = $row['P_Price']; ?></h3>

            <?php
}
}
?>
            </div>
            <div class="payment-options">
                <h2>Payment Options</h2>
                <div class="cash_on_delivery">
                    <input type="radio" id="cash" name="cod" checked>
                    <span name="cash1">Cash On Delivery</span>
                </div>
            </div>
                <div class="confirmButton">
                <form action="./confirmPage.php" method="GET">
                    <input type="submit" value="Confirm" name="confirm" id="sub"  disabled onclick = "alertfun2()">
                </form>
            </div>
        </div>



    </main>

    <script>
        function alertfun() {
            var address = document.getElementById('address');
            var btn = document.getElementById('sub');
            if (address.value === '')  {
                btn.disabled= true;
            }else {
                btn.disabled = false;
            }
        }

        function alertfun2() {
           alert("Cash on Delivery")
        }

    </script>
</body>
</html>
<?php
mysqli_close($con);
?>