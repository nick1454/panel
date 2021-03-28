<?php
    include('DB/connection.php');
    include('backend/blog_processes.php');

    $id = isset($_GET['id']) ? $_GET['id']: 0;

    if (!$id)
        header('location:blog.php');

    $post = selectPost($connection, $id);

    include '_web/header.php';
    include '_web/navbar.php';
?>

<section class="services-details-area pt-100 pb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="services-details-content">
                    <div class="services-content-item">
                        <div class="services-details-img d-flex justify-content-center">
                            <img src="<?php echo $post['image'] ?>" alt="Image">
                        </div>
                        <h3><?php echo $post['title'] ?></h3>
                        <p><?php echo $post['body'] ?></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="sidebar-widget categories">
                    <h3>More Link
                    </h3>
                    <ul>
                        <li>
                            <a href="index.php">
                                Home
                                <i class="bx bx-chevron-right"></i>
                            </a>
                        </li>
                        <li>
                            <a href="about-us.php">
                                About us
                                <i class="bx bx-chevron-right"></i>
                            </a>
                        </li>
                        <li>
                            <a href="services.php">
                                Services
                                <i class="bx bx-chevron-right"></i>
                            </a>
                        </li>
                        <li>
                            <a href="blog.php">
                                Blog
                                <i class="bx bx-chevron-right"></i>
                            </a>
                        </li>
                        <li>
                            <a href="contact.php">
                                Contact
                                <i class="bx bx-chevron-right"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>

<?php
include '_web/footer.php';
include '_web/scripts.php';


?>
