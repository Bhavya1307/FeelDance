<?php
include '../reusable/connection.php';
include '../includes/functions.php';

// Get and escape class_id from query parameter
$class_id = mysqli_real_escape_string($conn, $_GET['id']);

    // SQL query to mark the class as deleted
$sql = "UPDATE classes SET deleted_at=NOW() WHERE class_id='$class_id'";


    if ($conn->query($sql) === TRUE) {
        set_message("Class deleted successfully", "success");
    } else {
        // Debugging: Output error message
        set_message("Error: " . $conn->error, "danger");
    }


// Redirect to the classes page
header('Location: classes.php'); // Ensure this is the correct page
exit();
?>
