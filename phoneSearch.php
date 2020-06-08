<?php
if ($_GET['Search'] == "Search...") {
    header('Location:./index.php');

}
include 'dbConnect.php';
include 'navBar.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Phones</title>
    <link rel="stylesheet" href="phoneSearch.css">
    <link rel="stylesheet" href="index.css">
    </head>
<body>
        <div class="Phones">

        <?php
if (isset($_GET['Search_btn'])) {
    $search = mysqli_real_escape_string($con, $_GET['Search']);
    $sql_query = "SELECT * FROM phones WHERE P_Name LIKE '%$search%' ";
    $result = mysqli_query($con, $sql_query);
    $queryResults = mysqli_num_rows($result);
    if ($queryResults > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            ?>
                <div class="phone-box">
                    <div class="phone_content">
                        <img id="phone-image" src ="<?php echo $row['P_Image']; ?>" >
                        <div class="text-content">
                            <a href="./phoneSelect.php?title=<?php echo $row['P_Name'] ?>"><?php echo $row['P_Name']; ?></a>
                            <ul>
                                <li><?php echo $row['P_Memory']; ?></li>
                                <li><?php echo $row['P_Display']; ?></li>
                                <li><?php echo $row['P_Camera']; ?></li>
                                <li><?php echo $row['P_Battery']; ?></li>
                                <li><?php echo $row['P_Processor']; ?></li>
                            </ul>
                        <h3>&#x20b9;<?php echo $row['P_Price']; ?></h3>
                        </div>
                    </div>
                </div>
        <?php
}

    } else {
        ?>
                <div class="nothing">
                    <h1>Nothing Found!!!</h1>
                </div>
           <?php }

}
?>
    </div>
    <script src="index.js"></script>
</body>
</html>
<?php
mysqli_close($con);
?>