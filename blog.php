<?php

    include '_web/header.php';
    include '_web/navbar.php';
    include('DB/connection.php');
    include('backend/blog_processes.php');

    $posts = getPosts($connection);

?>
<div class="page-title-area bg-1">
    <div class="container">
        <div class="page-title-content">
            <h2>Knowledge Center</h2>

        </div>
    </div>
</div>

<section class="services-details-area pt-100 pb-70">
    <div class="container">
        <div class="row">
        <?php if ($posts): ?>
        <?php foreach ($posts as $post): ?>
            <div class="col-4" style="margin-bottom: 20px;">
                <a href="post.php?id=<?php echo $post['id'] ?>">
                    <div class="card">
                        <?php if ($post['image']): ?>
                      <img class="card-img-top img-fluid" src="<?php echo $post['image']; ?>" alt="Card image cap">
                        <?php endif; ?>
                      <div class="card-body">
                        <p class="card-text"><?php echo $post['title']; ?></p>
                      </div>
                    </div>
                </a>
            </div>
        <?php endforeach; ?>
        <?php endif; ?>
        </div>
    </div>
    </div>
</section>

<?php
include '_web/footer.php';
include '_web/scripts.php';


?>
