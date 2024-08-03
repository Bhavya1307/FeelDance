<?php
include '../reusable/connection.php';
include '../includes/functions.php';

// Check if 'id' parameter is present in the URL
if (isset($_GET['member_id'])) {
    $member_id = mysqli_real_escape_string($conn, $_GET['member_id']);

    // SQL query to mark the allocation as deleted
    $sql = "UPDATE members SET allocation_deleted_at=NOW() WHERE member_id='$member_id'";

    // Execute the query and handle the result
    if ($conn->query($sql) === TRUE) {
        set_message("Allocation deleted successfully", "success");
    } else {
        // Debugging: Output the error message
        set_message("Error: " . $conn->error, "danger");
    }
} else {
    // Debugging: Inform about missing 'id' parameter
    set_message("Error: 'id' parameter is missing.", "danger");
}

// Redirect to the allocation list page
header('Location: manageallocation.php');
exit();
?>
