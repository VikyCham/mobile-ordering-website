<?php
include 'dbConnect.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Phone select</title>
    <link rel="stylesheet" href="phoneSelect.css">
</head>
<body>
    <div class="phone_modalbox">

    <?php
$title = mysqli_real_escape_string($con, $_GET['title']);
$sql_query = "SELECT * FROM phones WHERE P_Name= '$title'";
$result = mysqli_query($con, $sql_query);
$queryResults = mysqli_num_rows($result);
if ($queryResults > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        ?>
             <div class="phone-box">
                <div class="phone_content">
                    <div class="close" onclick="goBack()">+</div>
                    <img id="phone-image" src ="<?php echo $row['P_Image']; ?>" >
                    <div class="text-content">
                    <h1><?php echo $row['P_Name']; ?></h1>
                        <ul>
                            <li><?php echo $row['P_Memory']; ?></li>
                            <li><?php echo $row['P_Display']; ?></li>
                            <li><?php echo $row['P_Camera']; ?></li>
                            <li><?php echo $row['P_Battery']; ?></li>
                            <li><?php echo $row['P_Processor']; ?></li>
                        </ul>
                    <h3>&#x20b9; <?php echo $row['P_Price']; ?></h3>
                    <a href="./buyPage.php?title=<?php echo $row['P_Name'] ?>" class="buy-btn" >Buy</a>
                    </div>
                </div>
            </div>
    <?php
}
}
?>
    </div>
    <script>
        function goBack() {
            history.go(-1);
        }
    </script>
</body>
</html>
<?php
mysqli_close($con);
?>