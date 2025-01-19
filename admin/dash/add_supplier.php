<?php
// Database connection
$conn = new mysqli("localhost", "root", "", "furniture_shop2");

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get data from POST request
    $supplier_name = $_POST['suppliername'];
    $supplier_contact = $_POST['suppliercontact'];
    $supplier_email = $_POST['supplieremail'];

    // Insert data into suppliers table
    $sql = "INSERT INTO suppliers (Name, Contact, Email) VALUES (?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("sss", $supplier_name, $supplier_contact, $supplier_email);

    if ($stmt->execute()) {
        header("Location: supplier.php");
    } else {
        echo "Error: " . $stmt->error;
    }

    // Close statement
    $stmt->close();
}

// Fetch all suppliers to display on the page
$result = $conn->query("SELECT * FROM suppliers");

// Close connection
$conn->close();
?>