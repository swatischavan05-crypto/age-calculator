<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Age Calculator</title>

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500&display=swap');

        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background: #f4f6f9;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .card {
            background: white;
            width: 400px;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
            color: #222;
        }

        /* 🔥 BLACK INPUT BOX STYLE */
        input {
            width: 92%;
            padding: 12px;
            margin: 8px 0;
            border: 1px solid black;
            border-radius: 10px;
            font-size: 14px;
            outline: none;
            color: black;
        }

        input:focus {
            border-color: black;
            box-shadow: 0 0 5px rgba(0,0,0,0.3);
        }

        button {
            width: 100%;
            padding: 12px;
            margin-top: 15px;
            background: black;
            color: white;
            border: none;
            border-radius: 10px;
            font-size: 15px;
            cursor: pointer;
        }

        button:hover {
            background: #333;
        }

        .note {
            font-size: 12px;
            color: gray;
            margin-top: 10px;
        }
    </style>
</head>

<body>

<div class="card">

    <h2>Age Calculator</h2>

    <form action="result.jsp" method="post">

        <input type="text" name="name" placeholder="Enter Your Name" required>

        <input type="number" name="year" placeholder="Birth Year" required>

        <input type="number" name="month" placeholder="Birth Month (1-12)" required>

        <input type="number" name="day" placeholder="Birth Day (1-31)" required>

        <button type="submit">Calculate Age</button>

    </form>

    <div class="note">
        Enter correct date for accurate result
    </div>

</div>

</body>
</html>
