<?php
// Database connection
$conn = new mysqli("localhost", "root", "", "furniture_shop2");

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $category_name = $_POST['category_name'];
    $category_image = $_POST['category_image'];

    // Prepare and execute SQL query
    $sql = "INSERT INTO productcategories (Name, image) VALUES (?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ss", $category_name, $category_image);

    if ($stmt->execute()) {
        header("Location: product-category.php");
    } else {
        echo "Error: " . $stmt->error;
    }

    // Close connections
    $stmt->close();
    $conn->close();
}
?>
