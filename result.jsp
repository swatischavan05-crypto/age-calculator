<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.Period" %>
<%@ page import="java.time.DayOfWeek" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Result</title>

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;500&display=swap');

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
            width: 420px;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
            text-align: center;
        }

        h2 {
            color: #222;
        }

        .box {
            margin-top: 15px;
            padding: 15px;
            background: #f0f0f0;
            border-radius: 10px;
            line-height: 1.8;
        }

        .highlight {
            font-weight: bold;
            font-size: 18px;
            color: black;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 18px;
            background: black;
            color: white;
            text-decoration: none;
            border-radius: 8px;
        }

        a:hover {
            background: #333;
        }

        .error {
            color: red;
            margin-top: 10px;
        }
    </style>
</head>

<body>

<%
    String name = request.getParameter("name");
    String y = request.getParameter("year");
    String m = request.getParameter("month");
    String d = request.getParameter("day");

    try {
        int year = Integer.parseInt(y);
        int month = Integer.parseInt(m);
        int day = Integer.parseInt(d);

        LocalDate dob = LocalDate.of(year, month, day);
        LocalDate today = LocalDate.now();

        Period p = Period.between(dob, today);
        DayOfWeek dow = dob.getDayOfWeek();
%>

<div class="card">

    <h2>Hello <%= name %> 👋</h2>

    <div class="box">
        Age: <span class="highlight"><%= p.getYears() %> Years</span><br><br>
        Born On: <span class="highlight"><%= dow %></span><br><br>
        Date of Birth: <%= dob %>
    </div>

    <a href="index.jsp">Go Back</a>

</div>

<%
    } catch(Exception e) {
%>

<div class="card">
    <h2>Error ⚠️</h2>
    <p class="error">Invalid input! Please enter correct date.</p>
    <a href="index.jsp">Go Back</a>
</div>

<%
    }
%>

</body>
</html>
