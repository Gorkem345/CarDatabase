<?php
// --- PRE-LOAD DATA FROM DATABASE ---
$host = "data-management-server-4.cbxlqxkadwhn.us-east-1.rds.amazonaws.com";
$user = "GorkemAkdogan";
$pass = "569f1097a98fdaa500d9da399631fd7f9ef8c4d6";
$db   = "group04db";

$conn = new mysqli($host, $user, $pass, $db);

$carOptions = [];
$companyOptions = [];

if ($conn->connect_error == null) {
    $carResult = $conn->query("SELECT car_id, model FROM Car");
    if ($carResult && $carResult->num_rows > 0) {
        while ($row = $carResult->fetch_assoc()) {
            $carOptions[] = ["id" => $row["car_id"], "name" => $row["model"]];
        }
    }

    $compResult = $conn->query("SELECT company_id, company_name FROM Insurance_Company");
    if ($compResult && $compResult->num_rows > 0) {
        while ($row = $compResult->fetch_assoc()) {
            $companyOptions[] = ["id" => $row["company_id"], "name" => $row["company_name"]];
        }
    }
}
$conn->close();
// -----------------------------------
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Run Stored Procedures</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7f6;
            padding: 40px;
        }
        .container {
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            max-width: 600px;
            margin: 0 auto;
        }
        h2 {
            color: #2c3e50;
            margin-top: 0;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: inline-block;
            width: 150px;
            font-weight: bold;
            color: #34495e;
        }
        input[type="text"], select {
            padding: 8px;
            width: calc(100% - 170px);
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .btn {
            background-color: #2ecc71;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 20px;
            width: 100%;
        }
        .btn:hover {
            background-color: #27ae60;
        }
        .back-link {
            display: block;
            margin-top: 20px;
            text-align: center;
            color: #3498db;
            text-decoration: none;
        }
        .back-link:hover {
            text-decoration: underline;
        }
        .result-box {
            margin-top: 20px;
            background-color: #eee;
            padding: 15px;
            border-radius: 4px;
            border-left: 5px solid #3498db;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Execute Stored Procedures</h2>

    <form method="post">
        <div class="form-group">
            <label>Select Procedure:</label>
            <select name="procedure_name" id="procSelect" onchange="loadParameters()" required>
                <option value="">-- Choose a Procedure --</option>
                <option value="DoMaintenance">DoMaintenance</option>
                <option value="RecoverRent">RecoverRent</option>
                <option value="RentCar">RentCar</option>
                <option value="Renew_Insurance">Renew_Insurance</option>
                <option value="SeasonalPriceUpdate">SeasonalPriceUpdate (Python)</option>
            </select>
        </div>

        <div id="parametersContainer"></div>

        <button type="submit" class="btn" id="submitBtn" style="display:none;">Run Query</button>
    </form>

    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST" && !empty($_POST['procedure_name'])) {
        $proc = $_POST['procedure_name'];
        $params = isset($_POST['params']) ? $_POST['params'] : [];

        $pythonExecutable = '"/Library/Frameworks/Python.framework/Versions/3.11/bin/python3"';

        if ($proc === "SeasonalPriceUpdate") {
            $command = $pythonExecutable . " test.py";
        } else {
            $command = $pythonExecutable . " run_procedure.py " . escapeshellarg($proc);

            foreach ($params as $p) {
                $command .= " " . escapeshellarg($p);
            }
        }

        $output = shell_exec($command . " 2>&1");

        echo "<div class='result-box'>";
        echo "<strong>Result:</strong><pre>" . htmlspecialchars($output) . "</pre>";
        echo "</div>";
    }
    ?>

    <a href="index.html" class="back-link">⬅ Back to Portal</a>
</div>

<script>
    const procedures = {
        "DoMaintenance": ["carID", "cost", "location"],
        "RecoverRent": [],
        "RentCar": ["car_id", "customer_id", "employee_id", "days", "payment_method"],
        "Renew_Insurance": ["company_id", "car_id", "price"],
        "SeasonalPriceUpdate": []
    };

    const availableLocations = [
        "Los Angeles Service Center", "New York Auto Shop", "Chicago Garage",
        "Houston Service Hub", "Miami Auto Repair", "San Francisco Garage",
        "Seattle Service Center", "Boston Auto Repair", "Denver Garage",
        "Atlanta Service Hub", "Dallas Auto Shop", "Phoenix Repair Center",
        "Las Vegas Garage", "Orlando Service Hub", "San Diego Auto Shop",
        "Houston Auto Repair", "Chicago Service Center", "New York Garage",
        "Los Angeles Repair Center", "Miami Service Hub", "Dealer Prep",
        "Bay Harbor"
    ];

    const availablePaymentMethods = [
        "Cash", "Credit Card", "Debit Card", "Bank Transfer"
    ];

    const availableCars = <?php echo json_encode($carOptions); ?>;
    const availableCompanies = <?php echo json_encode($companyOptions); ?>;

    function loadParameters() {
        const select = document.getElementById("procSelect");
        const container = document.getElementById("parametersContainer");
        const btn = document.getElementById("submitBtn");
        const selected = select.value;

        container.innerHTML = "";

        if (selected === "") {
            btn.style.display = "none";
            return;
        }

        const params = procedures[selected];

        if (params.length === 0) {
            container.innerHTML = "<p style='color:#7f8c8d; font-style:italic;'>This procedure requires no parameters.</p>";
        } else {
            params.forEach(param => {
                const div = document.createElement("div");
                div.className = "form-group";

                const label = document.createElement("label");
                label.innerText = param + ":";

                let inputElement;

                if (param === "location") {
                    inputElement = document.createElement("select");
                    inputElement.name = "params[]";
                    inputElement.required = true;

                    const defaultOption = document.createElement("option");
                    defaultOption.value = "";
                    defaultOption.innerText = "-- Select a Location --";
                    inputElement.appendChild(defaultOption);

                    availableLocations.forEach(loc => {
                        const opt = document.createElement("option");
                        opt.value = loc;
                        opt.innerText = loc;
                        inputElement.appendChild(opt);
                    });

                } else if (param === "payment_method") {
                    inputElement = document.createElement("select");
                    inputElement.name = "params[]";
                    inputElement.required = true;

                    const defaultOption = document.createElement("option");
                    defaultOption.value = "";
                    defaultOption.innerText = "-- Select a Payment Method --";
                    inputElement.appendChild(defaultOption);

                    availablePaymentMethods.forEach(method => {
                        const opt = document.createElement("option");
                        opt.value = method;
                        opt.innerText = method;
                        inputElement.appendChild(opt);
                    });

                } else if (param === "car_id" || param === "carID") {
                    inputElement = document.createElement("select");
                    inputElement.name = "params[]";
                    inputElement.required = true;

                    const defaultOption = document.createElement("option");
                    defaultOption.value = "";
                    defaultOption.innerText = "-- Select a Car --";
                    inputElement.appendChild(defaultOption);

                    availableCars.forEach(car => {
                        const opt = document.createElement("option");
                        opt.value = car.id;
                        opt.innerText = car.id + " - " + car.name;
                        inputElement.appendChild(opt);
                    });

                } else if (param === "company_id") {
                    inputElement = document.createElement("select");
                    inputElement.name = "params[]";
                    inputElement.required = true;

                    const defaultOption = document.createElement("option");
                    defaultOption.value = "";
                    defaultOption.innerText = "-- Select a Company --";
                    inputElement.appendChild(defaultOption);

                    availableCompanies.forEach(comp => {
                        const opt = document.createElement("option");
                        opt.value = comp.id;
                        opt.innerText = comp.id + " - " + comp.name;
                        inputElement.appendChild(opt);
                    });

                } else {
                    inputElement = document.createElement("input");
                    inputElement.type = "text";
                    inputElement.name = "params[]";
                    inputElement.required = true;
                }

                div.appendChild(label);
                div.appendChild(inputElement);
                container.appendChild(div);
            });
        }

        btn.style.display = "block";
    }
</script>

</body>
</html>
