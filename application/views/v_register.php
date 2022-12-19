<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Halaman Login</title>
</head>

<body>
    <h1>Halaman Register DKM APSS</h1>
    <form action="<?php echo base_url('index.php/login/aksi_register'); ?>" method="POST">
        <table>
            <tr>
                <td>Name</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>Username</td>
                <td><input type="text" name="username"></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="password"></td>
            </tr>
            <tr>
                <td>Konfirmasi Password</td>
                <td><input type="password" name="konfirmasi_password"></td>
            </tr>
            <tr>
                <td><input type="submit" value="Daftar"></td>
                <td><a href="<?php echo base_url('index.php/login/'); ?>">Login</a></td>
            </tr>
        </table>
    </form>
</body>

</html>