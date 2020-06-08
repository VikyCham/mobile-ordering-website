<?php
include 'dbConnect.php';

if (isset($_POST['signup-btn'])) {

    function secure_input($data)
    {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }

    $error = false;
    $username = secure_input($_POST['username']);
    $email = secure_input($_POST['email']);
    $password = secure_input($_POST['password']);
    $cnfPassword = secure_input($_POST['cnfpassword']);

    //Validation
    //Checking Username already exists and length
    $user_check_query = "SELECT * FROM users WHERE username = '$username' OR  email = '$email'";
    $user_result = mysqli_query($con, $user_check_query);
    $user = mysqli_fetch_assoc($user_result);

    if (strlen($username) < 3) {
        $error = true;
        $username_error = "Username must have atleast 3 characters";
    } elseif ($user['username'] === $username) {
        $error = true;
        $username_error = "Username already exits";
    }

    //Checking Email already exists
    if ($user['email'] === $email) {
        $error = true;
        $email_error = "Email alredy exits";
    }

    //Checking Password
    if (strlen($password) < 6) {
        $error = true;
        $password_error = "Password must have atleast 6 characters";
    } elseif ($password != $cnfPassword) {
        $error = true;
        $cnfPassword_error = "Password do not match";
    }

    //Encrypting password with md5
    $password = md5($password);

    //Inserting data into database
    if (!$error) {
        $user_insert_query = "INSERT INTO users (username,email,password)
                                   VALUES ('$username' , '$email' , '$password')";
        if (mysqli_query($con, $user_insert_query)) {
            $successMsg = "Resgister Successful";
        } else {
            echo 'Error' . mysqli_error($con);
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up</title>
    <link rel="stylesheet" type="text/css" href="signup.css">
</head>
<body>

<div class="signup-box">
    <div class="signup-content">
        <h1>Sign Up</h1>
            <?php
if (isset($successMsg)) {
    ?>
            <div class="success">
                <?php echo $successMsg; ?><a id ="login" href="./signin.php">Login</a>
            </div>
            <?php
}
?>

            <!-- Sign Up content-->
            <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']) ?>" method="POST">
                <div class="input-div">
                    <input class="signup-text" type="text" placeholder="Username.." name="username" autocomplete="off" required>
                    <span id="error-text"><?php if (isset($username_error)) {
    echo $username_error;
}
?></span>
                </div>
                <div class="input-div">
                    <input class="signup-text" type="email" placeholder="Email.." name="email"  autocomplete="off" required>
                    <span id="error-text"><?php if (isset($email_error)) {
    echo $email_error;
}
?></span>
                </div>
                <div class="input-div">
                    <input class="signup-text" type="password" placeholder="Password.." name="password"  autocomplete="off" required>
                    <span id="error-text"><?php if (isset($password_error)) {
    echo $password_error;
}
?></span>
                </div>
                <div class="input-div">
                    <input class="signup-text" type="password" placeholder="Confirm Password.." name="cnfpassword"  autocomplete="off" required>
                    <span id="error-text"><?php if (isset($cnfPassword_error)) {
    echo $cnfPassword_error;
}
?></span>
                </div>
                    <input class="submit" type="submit" value="Sign Up" name="signup-btn" id="signup-btn">
            </form>
                <div class="ask-login">
                    <h3 id="text">Already have account?</h3>
                    <a id="login" href="./signin.php">Login</a>
                </div>
    </div>
</div>
</body>
</html>
<?php
mysqli_close($con);
?>