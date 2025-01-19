<?php
session_start();
// Include your existing database connection code here
include 'db_connection.php'; // Adjust the path as needed

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Prepare and execute SQL query to retrieve user based on email
    $stmt = $conn->prepare("SELECT ID, Name, Contact, password, Email, Address FROM customers WHERE Email = ?");
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        // User found, now verify the password
        $user = $result->fetch_assoc();

        // Debugging output
        // echo 'Email found: ' . $user['Email'] . '<br>';
        // echo 'Password from DB: ' . $user['password'] . '<br>';

        // Verify the entered password against the stored hashed password
        if (password_verify($password, $user['password'])) {
            echo 'Password verified successfully.';
            // Successful login
            $_SESSION['customer_id'] = $user['ID'];
            $_SESSION['customer_name'] = $user['Name'];
            $_SESSION['customer_address'] = $user['Address'];
            header("Location: ../mywebsite/product_list.php"); // Redirect to the shop page
            exit();
        } else {
            // Invalid password
            echo $password . "<br>";
            echo $user['password'] . "<br>";
            echo password_verify($password, $user['password']) . '<br>';
            echo 'Email found: ' . $user['Email'] . '<br>';
            echo 'Password verification failed.<br>';
            // echo 'Entered password: ' . $password . '<br>';
        }
    } else {
        // No user found with the provided email
        echo "Email not found.";
    }

    // Close statement
    $stmt->close();
}

// Close the database connection
$conn->close();
?>
