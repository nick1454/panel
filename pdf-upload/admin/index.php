<?php
    session_start();

    if (!isset($_SESSION['user']))
        header('location: ../login/');

    include('../DB/connection.php');
    include('../backend/blog_processes.php');

    $message = '';

    if (isset($_GET['id']) && isset($_GET['action'])) {
        $id = $_GET['id'];
        $action = $_GET['action'];

        if ($id && $action === 'delete')
            $message = deletePost($connection, $id);
    }

    if (isset($_GET['message']))
        $message = $_GET['message'];

    $posts = getPosts($connection, 'id, title, image');
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
                width: 70% !important;
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
<div class="w3-main" style="float:right;margin-top:60px;height:inherit;margin-left:400px !important;margin-bottom:20px;padding-bottom:20px;">
    <div style="height:100%">
        <div class="w3-container">
          <h2>Posts</h2>

          <?php if ($message): ?>
          <div class="w3-blue" style="color:white; padding: 0px 10px; border-radius: 50px">
              <?php echo $message ?>
          </div>
          <?php endif; ?>

          <?php if (mysqli_num_rows($posts)): ?>
          <table class="w3-table w3-striped w3-bordered">
            <tr>
              <th>Title</th>
              <th>Image</th>
              <th>Actions</th>
            </tr>
            <?php while ($post = mysqli_fetch_assoc($posts)): ?>
            <tr>
                <td><?php echo $post['title'] ?></td>
                <td>
                    <?php if ($post['image']): ?>
                        <img src="/<?php echo $post['image'] ?>"
                        alt="<?php echo $post['title'] ?>"
                        height="50px"
                        width="50px"
                        >
                    <?php else: ?>
                        No image available
                    <?php endif; ?>
                </td>
                <td style="display:flex">
                    <a href="form.php?id=<?php echo $post['id'] ?>">
                        <i class="fa fa-edit" style="font-size:25px;color:rgba(33, 150, 243, 1)"></i>
                    </a>
                    <a href="?action=delete&id=<?php echo $post['id']?>"><i class="fa fa-trash" style="font-size:25px;color:rgba(232, 89, 16, 1);margin-left:10px"></i>
                    </a>
                </td>
            </tr>
            <?php endwhile; ?>
          </table>
          <?php else: ?>
          <div>
              No post available right now.
          </div>
          <?php endif; ?>
        </div>
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
