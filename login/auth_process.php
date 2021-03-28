<?php

    function validateLoginDetails($username, $password)
    {
        if (!$username) {
            return "Username id can't be empty";
        }

        if (!$password) {
            return "Password can't be empty";
        }

        return;
    }

    function login($connection, $username, $password)
    {
        $getUser = 'select name,password from users where name=?';
        $prepareStatement = mysqli_prepare($connection, $getUser);
        mysqli_stmt_bind_param($prepareStatement, 's', $username);

        if (!mysqli_stmt_execute($prepareStatement))
            return 'Unable to login, please try again.';

        mysqli_stmt_bind_result($prepareStatement, $selectedUsername, $selectedPassword);
        $result = mysqli_stmt_fetch($prepareStatement);

        if (!$result)
            return 'No user found with this name';

        if (!($password == $selectedPassword))
            return 'Wrong password provided. Please try again';

        $_SESSION['user'] = $selectedUsername;
        header('location: ../admin-panel/');
    }
