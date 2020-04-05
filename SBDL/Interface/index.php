<?php
// Create database connection using config file
include_once("config.php");

// Fetch all users data from database
$result = mysqli_query($mysqli, "SELECT * FROM users ORDER BY id DESC");
?>

<html>
<head>    
    <title>Homepage</title>
</head>

<body>
<a href="add.php">Add New User</a><br/><br/>

    <table width='80%' border=1>

    <tr>
        <th>nama</th> <th>no_hp</th> <th>email</th> <th>Update</th>
    </tr>
    <?php  
    while($user = mysqli_fetch_array($result)) {         
        echo "<tr>";
        echo "<td>".$user['nama']."</td>";
        echo "<td>".$user['no_hp']."</td>";
        echo "<td>".$user['email']."</td>";    
        echo "<td><a href='edit.php?id=$user[id]'>Edit</a> | <a href='delete.php?id=$user[id]'>Delete</a></td></tr>";        
    }
    ?>
    </table>
</body>
</html>