<?php
// Establish a connection to the MySQL database
$conn = mysqli_connect('localhost', 'root', '', 'feel_dance');

// Check if the connection was successful
if (!$conn) {
    // Display the error code if the connection failed
    echo 'Error code: ' . mysqli_connect_errno();
    // Display the error message if the connection failed
    echo 'Error message: ' . mysqli_connect_error();
    // Terminate the script if the connection failed
    exit;
}
?>