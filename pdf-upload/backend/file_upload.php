<?php
    function uploadPDF($connection, $id, $title, $file)
    {
        $allowedExtensions = ['pdf'];
        $fileName = $image['name'];

        $fileExtension = strtolower(pathinfo($fileName, PATHINFO_EXTENSION));

        if (!in_array($fileExtension, $allowedExtensions))
            return "this is not a supported image format. Supported formats are 'pdf'.";

        if ($image["size"] > 5242880)
            return 'Image must be smaller than 5 mb.';

        if (!move_uploaded_file($image["tmp_name"], $targetFile))
            return 'Unable to insert image please insert again';

        $addImageToDB = 'insert into files(url,user_id) values(?,?)';
        $preparedStatment = mysqli_prepare($connection, $addImageToDB);
        mysqli_stmt_bind_param($preparedStatment, 'si', $path, $id);

        if (!mysqli_stmt_execute($preparedStatment))
            return 'Unable to update image. Please try again.'.mysqli_error();

        return;
    }
