<!-- Top container -->
<div class="w3-bar w3-top w3-large" style="z-index:4;background-color: rgb(98, 189, 94)">
    <button class="w3-bar-item w3-button w3-hide-large w3-hover-none w3-hover-text-light-grey" onclick="w3_open();"><i class="fa fa-bars"></i>  Menu</button>
    <span class="w3-bar-item"style="color:#fff;">Jyoti Ayur Clinic </span>
</div>

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>
    <div class="w3-container w3-row">
        <div class="w3-col s8 w3-bar" style='height:80px;display:flex;align-items:flex-end;'>
            <span>Welcome, <strong><?php echo $_SESSION['user'] ?></strong></span>
        </div>
    </div>
    <hr>
    <div class="w3-container">
        <h5>Dashboard</h5>
    </div>

    <div class="w3-bar-block">
        <a href="#" class="w3-bar-item w3-button w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black" onclick="w3_close()" title="close menu"><i class="fa fa-remove fa-fw"></i>  Close Menu</a>
        <a href="../admin-panel" class="w3-bar-item w3-button w3-padding" style="<?php echo (activePage() === 'index.php') ? 'background-color: rgb(98 189 94)': '' ?>"><i class="fa fa-list fa-fw"></i>All Posts</a>
        <a href="form.php" class="w3-bar-item w3-button w3-padding" style="<?php echo (activePage() === 'form.php') ? 'background-color: rgb(98 189 94)': '' ?>"><i class="fa fa-edit fa-fw"></i><?php if(isset($id) && $id): ?>Update Post<?php else: ?>New Post<?php endif; ?></a>
        <a href="../login/logout.php" class="w3-bar-item w3-button w3-padding"><i class="fa fa-lock fa-fw"></i>Logout</a>
    </div>
</nav>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>
