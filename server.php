<!DOCTYPE html>
<html>
<head>
    <title>Car Sales Dashboard</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 0; padding: 0; }
        .dashboard-container { display: flex; min-height: 100vh; }

        /* Left Sidebar styling */
        .sidebar { width: 220px; background-color: #2c3e50; padding: 20px; }
        .sidebar h3 { color: white; margin-top: 0; }
        .menu-btn {
            display: block; width: 100%; padding: 12px; margin-bottom: 10px;
            background-color: #34495e; color: white; border: none;
            text-align: left; cursor: pointer; border-radius: 4px;
        }
        .menu-btn:hover { background-color: #3498db; }

                /* Back Button Specific Styling */
        .back-btn {
            background-color: #721c4d; /* A muted grey color */
            text-align: center;
            margin-top: auto; /* Keeps it pushed to the bottom */
            padding: 8px 10px; /* Reduced padding to make the button thinner */
            font-size: 14px; /* Slightly smaller text */
            width: 70%; /* Makes the button narrower */
            margin-left: auto; /* Centers the button horizontally */
            margin-right: auto;
        }

        .back-btn:hover {
            background-color: #95a5a6; /* A slightly lighter grey when hovered */
        }

        /* Right Content styling */
        .main-content { flex-grow: 1; padding: 30px; background-color: #f9f9f9; }

        /* Table styling */
        table { border-collapse: collapse; width: 100%; background: white; box-shadow: 0 1px 3px rgba(0,0,0,0.1); }
        th, td { border: 1px solid #ddd; padding: 12px; text-align: left; }
        th { background-color: #3498db; color: white; }
        tr:nth-child(even) { background-color: #f2f2f2; }
    </style>
</head>
<body>

<div class="dashboard-container">
    <div class="sidebar">
        <div> <h3>Database Views</h3>
            <form method="post">
                <button class="menu-btn" type="submit" name="view_name" value="Car_Insurance">Car Insurance</button>
                <button class="menu-btn" type="submit" name="view_name" value="Car_revenue">Car Revenue</button>
                <button class="menu-btn" type="submit" name="view_name" value="Customer_Age">Customer Age</button>
                <button class="menu-btn" type="submit" name="view_name" value="customer_car_rentals">Customer Car Rentals</button>
                <button class="menu-btn" type="submit" name="view_name" value="customer_rental_summary">Customer Rentals</button>
                <button class="menu-btn" type="submit" name="view_name" value="Profitable_fuel_type">Profit w Fuel Type</button>
                <button class="menu-btn" type="submit" name="view_name" value="Revenue_per_customer">Revenue per Customer</button>
                <button class="menu-btn" type="submit" name="view_name" value="Revenue_per_employee">Revenue per Employee</button>
                <button class="menu-btn" type="submit" name="view_name" value="Unrented_cars">Unrented Cars</button>
                <button class="menu-btn" type="submit" name="view_name" value="Cars_Without_Insurance">Cars Without Insurance</button>
            </form>
        </div> <a href="index.html" class="menu-btn back-btn">⬅ Back to Portal</a>
    </div>

    <div class="main-content">
        <?php
        if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['view_name'])) {

            $view = escapeshellarg($_POST['view_name']);
            echo "<h2>Viewing: " . htmlspecialchars($_POST['view_name']) . "</h2>";

            $pythonExecutable = '"/Library/Frameworks/Python.framework/Versions/3.11/bin/python3"';
            $command = $pythonExecutable . " process.py " . $view;

            $output = shell_exec($command . " 2>&1");

            // Decode the JSON string returned by Python into a PHP Array
            $data = json_decode($output, true);

            // Error handling & Table Generation
            if ($data === null) {
                echo "<p style='color:red;'>Failed to parse data. Raw output:</p><pre>$output</pre>";
            } elseif (isset($data['error'])) {
                echo "<p style='color:red;'>Database Error: " . htmlspecialchars($data['error']) . "</p>";
            } elseif (empty($data)) {
                echo "<p>This view currently has no records to display.</p>";
            } else {
                echo "<table>";

                // Dynamically build table headers based on the dictionary keys
                echo "<thead><tr>";
                foreach (array_keys($data[0]) as $header) {
                    echo "<th>" . htmlspecialchars($header) . "</th>";
                }
                echo "</tr></thead>";

                // Populate rows
                echo "<tbody>";
                foreach ($data as $row) {
                    echo "<tr>";
                    foreach ($row as $cell) {
                        echo "<td>" . htmlspecialchars((string)$cell) . "</td>";
                    }
                    echo "</tr>";
                }
                echo "</tbody></table>";
            }
        } else {
            echo "<h2>Welcome to the Admin Panel</h2>";
            echo "<p>Select a view from the sidebar to load the data.</p>";
        }
        ?>
    </div>
</div>

</body>
</html>
