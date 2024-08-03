<?php
include '../reusable/connection.php';
include '../includes/functions.php';

// Fetch counts
$member_query = "SELECT COUNT(*) as total_members FROM members WHERE deleted_at IS NULL";
$total_members = $conn->query($member_query)->fetch_assoc()['total_members'];

$class_query = "SELECT COUNT(*) as total_classes FROM classes WHERE deleted_at IS NULL";
$total_classes = $conn->query($class_query)->fetch_assoc()['total_classes'];

include '../reusable/header-admin.php';
?>

<link rel="stylesheet" href="../reusable/css/admin-styles.css">

<div class="container admin-container">
    <h1 class="admin-title text-center">Admin Dashboard</h1>

    <div class="row">
        <div class="col-md-6 mb-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Total Members</h5>
                    <p class="card-text display-4"><?php echo $total_members; ?></p>
                    <a href="members.php" class="btn btn-admin-primary">View Members</a>
                </div>
            </div>
        </div>
        <div class="col-md-6 mb-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Total Classes</h5>
                    <p class="card-text display-4"><?php echo $total_classes; ?></p>
                    <a href="classes.php" class="btn btn-admin-primary">View Classes</a>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6 mb-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Quick Actions</h5>
                    <a href="addMember.php" class="btn btn-admin-primary mb-2">Add New Member</a>
                    <a href="addClass.php" class="btn btn-admin-primary mb-2">Add New Class</a>
                    <a href="manageallocation.php" class="btn btn-admin-primary">Assign Member to Class</a>
                </div>
            </div>
        </div>
        <div class="col-md-6 mb-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Recent Activity</h5>
                    <ul class="list-group">
                        <li class="list-group-item">New member added: John Doe</li>
                        <li class="list-group-item">New class created: Advanced Ballet</li>
                        <li class="list-group-item">Member assigned to class: Jane Smith to Hip Hop</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<?php include '../reusable/footer-admin.php'; ?>
