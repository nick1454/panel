<?php
    session_start();

    if (!isset($_SESSION['user']))
        header('location: ../login/');

    include('../DB/connection.php');
    include('../backend/blog_processes.php');

    $error = $featuredImage = $path = $title = $body = '';
    $id = '';
    $path = '';

    $error = isset($_GET['error']) ? $_GET['error']: '';
    if ($_GET && isset($_GET['id'])) {

        $id = $_GET['id'];

        if ($id) {
            $data = getPost($connection, $id);
            $title = $data['title'];
            $body = $data['body'];
            $id = $data['id'];
        } else {
            header("Location: {$_SERVER['PHP_SELF']}");
        }
    }

    if ($_POST) {
        $id = $_POST['id'];
        $title = $_POST['title'];
        $body = $_POST['body'];
        $featuredImage = (!$_FILES['featuredImage']['error']) ? $_FILES['featuredImage']: '';

        if ($title || $body || $featuredImage) {
            if ($id) {
                $error = updatePost($connection, $id, $title, $body);
            } else {
                $data = createPost($connection, $title, $body);
                $error = $data[0];
                $id = $data[1];
            }

            if ($id && $featuredImage) {
                $fileExtension = strtolower(pathinfo($featuredImage['name'], PATHINFO_EXTENSION));
                $path = 'uploads/'.$id.'.'.$fileExtension;
                $targetFile = $_SERVER['DOCUMENT_ROOT'].'/'.$path;
            }

            if (!$error && $path && $id)
                $error = uploadImage($id, $connection, $featuredImage, $path, $targetFile);

            if (!$error)
                header('location:../admin');
        } else {
            $error = 'No data to insert.';
        }
    }
?>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Panel</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        html,body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}

        @media only screen and (max-width: 2560px) {
            .w3-main {
                width: 88% !important;
            }
        }
        @media only screen and (max-width: 1440px) {
            .w3-main {
                width: 78% !important;
            }
        }
        @media only screen and (max-width: 1300px) {
            .w3-main {
                width: 75% !important;
            }
        }
        @media only screen and (max-width: 992px) {
            .w3-main {
                width: 100% !important;
            }
        }
    </style>
</head>
<body class="w3-light-grey" style="height:100%;position:relative;">

<?php include('header.php') ?>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="float:right;margin-top:60px;height:inherit;margin-bottom:20px;">
    <div style="height:100%">
        <?php if ($error): ?>
            <div class="w3-container" style="color:white; padding: 0px 10px; border-radius: 50px;margin-bottom: 20px;">
                <p class="w3-red"><?php echo $error ?></p>
            </div>
        <?php endif; ?>
        <form class="w3-container w3-light-grey" method="post" enctype="multipart/form-data">
            <legend style="font-size:30px;">Blog</legend>
            <input type="hidden" name="id" value="<?php echo $id ?>">
            <input class="w3-input w3-border-0" type="text" style="margin-bottom:20px;"name="title" value="<?php echo $title; ?>" placeholder="Title">
            <textarea id="body" name="body" style="resize:none" rows="13" cols="126"><?php echo $body; ?></textarea>
            <input class="w3-input" type="file" style="margin-bottom:20px;display:block;" name="featuredImage">
            <input class="w3-button w3-green" type="submit" value="<?php echo ($id) ? 'Update' : 'Create' ?>">
        </form>
    </div>
</div>
<script>
// Get the Sidebar
var mySidebar = document.getElementById("mySidebar");

// Get the DIV with overlay effect
var overlayBg = document.getElementById("myOverlay");

// Toggle between showing and hiding the sidebar, and add overlay effect
function w3_open() {
    if (mySidebar.style.display === 'block') {
        mySidebar.style.display = 'none';
        overlayBg.style.display = "none";
    } else {
        mySidebar.style.display = 'block';
        overlayBg.style.display = "block";
    }
}

// Close the sidebar with the close button
function w3_close() {
    mySidebar.style.display = "none";
    overlayBg.style.display = "none";
}
</script>
</body>
</html>
