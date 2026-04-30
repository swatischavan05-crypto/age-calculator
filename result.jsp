<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.Period" %>
<%@ page import="java.time.DayOfWeek" %>

<html>
<head>
    <title>Result</title>

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
            width: 400px;
            padding: 40px;
            border: 1px solid #eee;
            border-radius: 12px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
            text-align: center;
        }

        h1 {
            font-size: 20px;
            color: #222;
        }

        .result {
            margin-top: 20px;
            font-size: 16px;
            line-height: 1.8;
            color: #333;
        }

        .highlight {
            font-size: 20px;
            font-weight: bold;
            color: #000;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 18px;
            background: #222;
            color: white;
            text-decoration: none;
            border-radius: 6px;
        }

        a:hover {
            background: black;
        }
    </style>
</head>

<body>

<%
    String name = request.getParameter("name");

    int year = Integer.parseInt(request.getParameter("year"));
    int month = Integer.parseInt(request.getParameter("month"));
    int day = Integer.parseInt(request.getParameter("day"));

    LocalDate dob = LocalDate.of(year, month, day);
    LocalDate today = LocalDate.now();

    Period p = Period.between(dob, today);
    DayOfWeek dayOfWeek = dob.getDayOfWeek();
%>

<div class="card">

    <h1>Hello <%= name %></h1>

    <div class="result">
        Age: <span class="highlight"><%= p.getYears() %> years</span><br>
        Born on: <span class="highlight"><%= dayOfWeek %></span><br>
        DOB: <%= dob %>
    </div>

    <a href="index.jsp">Go Back</a>

</div>

</body>
</html>
