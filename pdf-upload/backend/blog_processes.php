<?php
    function activePage()
    {
        $scriptName = explode('/', $_SERVER['PHP_SELF']);
        return array_pop($scriptName);
    }

    function uploadImage($id = '', $connection, $image, $path, $targetFile)
    {
        $allowedExtensions = ['jpg', 'jpeg', 'png'];
        $fileName = $image['name'];
        $fileExtension = strtolower(pathinfo($fileName, PATHINFO_EXTENSION));

        if (!in_array($fileExtension, $allowedExtensions))
            return "this is not a supported image format. Supported formats are 'jpg', 'jpeg', 'png'.";

        if ($image["size"] > 5242880)
            return 'Image must be smaller than 5 mb';

        if (!move_uploaded_file($image["tmp_name"], $targetFile))
            return 'Unable to insert image please insert again';

        $updateImage = 'update posts set image=? where id=?';
        $preparedStatment = mysqli_prepare($connection, $updateImage);
        mysqli_stmt_bind_param($preparedStatment, 'si', $path, $id);

        if (!mysqli_stmt_execute($preparedStatment))
            return 'Unable to update image. Please try again.'.mysqli_error();

        return;
    }

    function createPost($connection, $title, $body)
    {
        $createBlog = 'insert into posts (title, body) values(?,?)';
        $preparedStatment = mysqli_prepare($connection, $createBlog);
        mysqli_stmt_bind_param($preparedStatment, 'ss', $title, $body);

        if (!mysqli_stmt_execute($preparedStatment))
            return ['Unable to insert. Please try again'.mysqli_error($connection), ''];

        return [
            '',
            mysqli_insert_id($connection)
        ];
    }

    function getPosts($connection, $columns = '*')
    {
        $statement = 'select '.$columns.' from posts';
        $result = mysqli_query($connection,$statement);

        return $result ?? [];
    }

    function updatePost($connection, $id, $title, $body)
    {
        $result = selectPost($connection, $id);

        if (!$path) $path = $result['image'];

        if (!$result['id']) header('location:?error=No data found for this query.');

        $updateBlog = 'update posts set title=?, body=? where id=?';
        $preparedStatment = mysqli_prepare($connection, $updateBlog);
        mysqli_stmt_bind_param($preparedStatment, 'ssi', $title, $body, $result['id']);

        if (!mysqli_stmt_execute($preparedStatment))
            return 'Unable to update. Please try again.'.mysqli_error();

        return;
    }

    function getPost($connection, $id)
    {
        $result = selectPost($connection, $id);

        if (!$result['id']) header('location:index.php?message=No data found for this query.');

        return $result;
    }

    function deletePost($connection, $id)
    {
        $result = selectPost($connection, $id);

        if (!$result['id'])
            return 'No data found for this query.';

        $deleteStatement = 'delete from posts where id=?';
        $preparedStatement = mysqli_prepare($connection, $deleteStatement);
        mysqli_stmt_bind_param($preparedStatement, 'i', $result['id']);

        if (!mysqli_stmt_execute($preparedStatement))
            return mysqli_error($connection);

        return 'Post deleted successfully';
    }

    function selectPost($connection, $id)
    {
        $selectStatement = 'select * from posts where id=?';
        $preparedStatement = mysqli_prepare($connection, $selectStatement);

        mysqli_stmt_bind_param($preparedStatement, 'i', $id);
        mysqli_stmt_execute($preparedStatement);
        mysqli_stmt_bind_result($preparedStatement, $rowId, $title, $body, $image);
        mysqli_stmt_fetch($preparedStatement);

        return [
            'id' => $rowId,
            'title' => $title,
            'body' => $body,
            'image' => $image
        ];
    }
