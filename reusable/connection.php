<?php
// Connect to the MySQL database
$conn = mysqli_connect('localhost', 'root', '', 'feel_dance');

// Check connection
if (!$conn) {
    // Display connection errors and terminate
    echo 'Error code: ' . mysqli_connect_errno();
    echo 'Error message: ' . mysqli_connect_error();
    exit;
}
?>
