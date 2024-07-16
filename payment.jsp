<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="shopmart.models.User"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/payment_style.css">
    <script defer src="js/script_pay.js"></script>

</head>

<body>
	<%
	User user = (User)session.getAttribute("user");
	if(session.getAttribute("user") == null) {
		request.setAttribute("msg", "Please login or signup to proceed!");
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}
	%>
    <div class="container">
        <div id="error"></div>
        <form action="" id="formm" method="get">

            <div class="row">

                <div class="col">

                    <h3 class="title">billing address</h3>

                    <div class="inputBox">
                        <span>full name :</span>
                        <input id="formm" type="text" placeholder="john deo" required>
                    </div>
                    <div class="inputBox">
                        <span>email :</span>
                        <input type="email" placeholder="example@example.com" required>
                    </div>
                    <div class="inputBox">
                        <span>address :</span>
                        <input type="text" placeholder="room - street - locality" required>
                    </div>
                    <div class="inputBox">
                        <span>city :</span>
                        <input type="text" placeholder="mumbai" required>
                    </div>

                    <div class="flex">
                        <div class="inputBox">
                            <span>state :</span>
                            <input type="text" placeholder="india" required>
                        </div>
                        <div class="inputBox">
                            <span>zip code :</span>
                            <input type="text" placeholder="123 456"  maxlength="6" min="100000" max="999999" required>
                        </div>
                    </div>

                </div>

                <div class="col">

                    <h3 class="title">payment</h3>

                    <div class="inputBox">
                        <span>cards accepted :</span>
                        <img src="images/card.png" alt="">
                    </div>
                    <div class="inputBox">
                        <span>name on card :</span>
                        <input type="text" placeholder="mr. john deo" required>
                    </div>
                    <div class="inputBox">
                        <span>credit card number :</span>
                        <input type="number" placeholder="1111-2222-3333-4444" min="1000000000000000" max="9999999999999999" required>
                    </div>
                    <div class="inputBox">
                        <span>exp month :</span>
                        <input type="text" placeholder="january" required>
                    </div>

                    <div class="flex">
                        <div class="inputBox">
                            <span>exp year :</span>
                            <input type="number" placeholder="2022" min="2022" max="2080" required>
                        </div>
                        <div class="inputBox">
                            <span>CVV :</span>
                            <input type="text" placeholder="1234" maxlength="3" required>
                        </div>
                    </div>

                </div>

            </div>
            <a href="thankyou.jsp">
                <button onclick="showMsg()" class="text-uppercase" type="button">Proceed To Checkout</button>    
            </a>
        
        </form>


    </div>

</body>

</html>