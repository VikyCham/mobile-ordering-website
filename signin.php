<?php
session_start();
include 'dbConnect.php';

if (isset($_POST['signin-btn'])) {

    function secure_input($data)
    {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }
    $username = secure_input($_POST['username']);
    $password = secure_input($_POST['password']);

    //Encrypting password with md5
    $password = md5($password);

    //selecting data from table
    $user_select_query = "SELECT * FROM users WHERE username= '$username'";
    $user_result = mysqli_query($con, $user_select_query);
    $count = mysqli_num_rows($user_result);
    $user = mysqli_fetch_assoc($user_result);

    //Checking Password
    if ($count == 1 && $user['password'] == $password) {
        $_SESSION['username'] = $user['username'];
        header('location: ./home.php');
    } else {
        $errorMsg = "Invalid Uername or Password";
    }
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>
    <link rel="stylesheet" href="signin.css">
</head>
<body>
<div class="signin-box">
    <div class="signin-content">
        <h1>Login</h1>
        <?php
if (isset($errorMsg)) {
    ?>
            <div class="error">
                <?php echo $errorMsg; ?>
            </div>
        <?php
}
?>
        <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']) ?>" method="POST" autocomplete="off">
            <div class="username-area">
                <input class="signin-text" type="text" placeholder="Username" name="username" required>
                <p id="error-text" ><?php if (isset($errorText)) {
    echo $errorText;
}
?></p>
            </div>
            <div class="password-area">
                <input class="signin-text" type="password" placeholder="Password" name="password" required>
                <p id="error-text" ><?php if (isset($errorText)) {
    echo $errorText;
}
?></p>
            </div>
                <input class="submit" type="submit" value="Login" name="signin-btn">
        </form>
            <div class="ask-Signup">
                <h3 id="text">Account not created?</h3>
                <a id="signup" href="./signup.php">Sign Up</a>
            </div>
    </div>
</div>
</body>
</html>
<?php
mysqli_close($con);
?>