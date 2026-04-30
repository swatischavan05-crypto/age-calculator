<html>
<head>
    <title>Age Calculator</title>

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background: white;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .card {
            width: 380px;
            padding: 40px;
            border: 1px solid #eee;
            border-radius: 12px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
            text-align: center;
        }

        h1 {
            font-size: 22px;
            color: #222;
            margin-bottom: 20px;
        }

        input {
            width: 92%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 14px;
            outline: none;
        }

        input:focus {
            border-color: #666;
        }

        input[type="submit"] {
            background: #222;
            color: white;
            border: none;
            cursor: pointer;
            margin-top: 10px;
        }

        input[type="submit"]:hover {
            background: #000;
        }

        .small {
            font-size: 12px;
            color: gray;
            margin-top: 10px;
        }
    </style>
</head>

<body>

<div class="card">

    <h1>Age Calculator</h1>

    <form action="result.jsp" method="post">

        <input type="text" name="name" placeholder="Enter Name" required>

        <input type="number" name="year" placeholder="Birth Year" required>

        <input type="number" name="month" placeholder="Birth Month" required>

        <input type="number" name="day" placeholder="Birth Day" required>

        <input type="submit" value="Calculate Age">

    </form>

    <div class="small">Simple & Clean Age Calculator</div>

</div>

</body>
</html>
