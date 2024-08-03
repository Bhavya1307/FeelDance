<?php
include '../reusable/connection.php';
include '../includes/functions.php';


// Get member_id from query parameter and escape it
$member_id = mysqli_real_escape_string($conn, $_GET['id']);

if (isset($_POST['updateMember'])) {
    // Retrieve and escape POST data
    $name = mysqli_real_escape_string($conn, $_POST['name']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $role = mysqli_real_escape_string($conn, $_POST['role']);
    $image = $_FILES['image']['name'];
    $target = "../images/instructors/" . basename($image);

    // Build the SQL query
    if (!empty($image)) {
        $sql = "UPDATE members SET name='" . mysqli_real_escape_string($conn, $name) . "', 
                                  email='" . mysqli_real_escape_string($conn, $email) . "', 
                                  role='" . mysqli_real_escape_string($conn, $role) . "', 
                                  image='" . mysqli_real_escape_string($conn, $image) . "' 
                WHERE member_id='" . mysqli_real_escape_string($conn, $member_id) . "'";
        $moveImage = true;
    } else {
        $sql = "UPDATE members SET name='" . mysqli_real_escape_string($conn, $name) . "', 
                                  email='" . mysqli_real_escape_string($conn, $email) . "', 
                                  role='" . mysqli_real_escape_string($conn, $role) . "' 
                WHERE member_id='" . mysqli_real_escape_string($conn, $member_id) . "'";
        $moveImage = false;
    }

    // Execute the query and handle the result
    if ($conn->query($sql) === TRUE) {
        if ($moveImage) {
            if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
                set_message("Member updated successfully", "success");
            } else {
                set_message("Failed to upload image", "danger");
            }
        } else {
            set_message("Member updated successfully", "success");
        }
    } else {
        set_message("Error: " . $conn->error, "danger");
    }
    header('Location: members.php');
    exit();
} else {
    // Fetch the member's current details
    $sql = "SELECT * FROM members WHERE member_id='" . mysqli_real_escape_string($conn, $member_id) . "'";
    $result = $conn->query($sql);
    if ($result && $result->num_rows > 0) {
        $row = $result->fetch_assoc();
    } else {
        set_message("Member not found", "danger");
        header('Location: members.php');
        exit();
    }
}
?>

<?php include '../reusable/header-admin.php'; ?>
<div class="container admin-container">
    <h1 class="admin-title">Edit Member</h1>
    <?php get_message(); ?>
    <form method="post" enctype="multipart/form-data" class="admin-form">
        <input type="hidden" name="updateMember" value="1">
        <div class="mb-3">
            <label for="name" class="form-label">Name:</label>
            <input type="text" class="form-control" id="name" name="name" value="<?php echo htmlspecialchars($row['name']); ?>" required>
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Email:</label>
            <input type="email" class="form-control" id="email" name="email" value="<?php echo htmlspecialchars($row['email']); ?>" required>
        </div>
        <div class="mb-3">
            <label for="role" class="form-label">Role:</label>
            <select class="form-select" id="role" name="role" required>
                <option value="student" <?php if ($row['role'] == 'student') echo 'selected'; ?>>Student</option>
                <option value="instructor" <?php if ($row['role'] == 'instructor') echo 'selected'; ?>>Instructor</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="image" class="form-label">Image:</label>
            <input type="file" class="form-control" id="image" name="image">
        </div>
        <button type="submit" class="btn btn-admin-primary">Update Member</button>
    </form>
</div>
<?php include '../reusable/footer-admin.php'; ?>