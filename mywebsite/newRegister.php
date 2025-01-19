<?php
// Database connection
include('db_connection.php');
// Retrieve form data
$name = $_POST['name'];
$contact_number = $_POST['contact_number'];
$address = $_POST['address'];
$email = $_POST['email'];
$password = $_POST['password'];
$confirm_password = $_POST['confirm_password'];

// Validate password confirmation
if ($password !== $confirm_password) {
    echo "Passwords do not match!";
    exit;
}

// Hash the password
$hashed_password = password_hash($password, PASSWORD_DEFAULT);

// Prepare and bind the SQL statement
$stmt = $conn->prepare("INSERT INTO customers (Name, Contact, password, Email, Address) VALUES (?, ?, ?, ?, ?)");
$stmt->bind_param("sssss", $name, $contact_number, $hashed_password, $email, $address);

// Execute the statement
if ($stmt->execute()) {
    // Redirect to login page
    header("Location: signin.php");
    exit();
} else {
    echo "Error: " . $stmt->error;
}

// Close the statement and connection
$stmt->close();
$conn->close();
?>
