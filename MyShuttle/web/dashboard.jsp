<%@page import="backend.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <title>MyShuttle | Dashboard</title>
        <link href="css/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link href="css/bootstrap.min.css" rel="stylesheet" >
        <link href="css/pricing.css" rel="stylesheet">
        <style>
            .bd-placeholder-img {
                font-size: 1.125rem;
                text-anchor: middle;
                -webkit-user-select: none;
                -moz-user-select: none;
                -ms-user-select: none;
                user-select: none;
            }

            @media (min-width: 768px) {
                .bd-placeholder-img-lg {
                    font-size: 3.5rem;
                }
            }
            .custom-control-label::before, 
            .custom-control-label::after {
                top: .8rem;
                width: 1.25rem;
                height: 1.25rem;
            }
        </style>
    </head>
    <body>
        <section id="header">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-1 md-12"></div>
                    <div class="col-lg-10 md-12">
                        <nav class="navbar navbar-expand-lg navbar-light mt-3 bg-white">
                            <a class="navbar-brand font-weight-bold text-dark logo" href="index.jsp" style="margin-left: 10px;font-size: 30px"><i class="fas fa-fw fa-bus"></i> MyShuttle</a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>      
                        </nav>
                    </div>
                    <div class="col-lg-1 md-12"></div>
                </div>
            </div>
        </section>
        <%
            HttpSession d_session = request.getSession();
            User user = (User) d_session.getAttribute("user");
            if(user.getType().equals("commuter")){
        %>
        <!--Commuter Dashboard-->
        <div>
            <section style="padding-top: 30px;">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-1 md-12"></div>
                        <div class="col-lg-9 md-12 mr-5 ml-3 mb-4" style="height: 80px;">
                            <div class="card border-left-primary shadow h-100 py-1">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-2">
                                            <div class="h4 mb-0 font-weight-bold text-gray-800">
                                                <a href="dashboard.jsp">Dashboard</a>
                                            </div>
                                        </div>
                                        <div class="col-md-2">
                                            <a class="btn btn-outline-primary" href="javascript:{}" onclick="sendBuzz()"><i class="fas fa-envelope-open-text"></i> Send a Buzz</a>
                                        </div>
                                        <div class="col-md-3">
                                            <a class="btn btn-outline-primary" href="javascript:{}" onclick="invite()"><i class="fas fa-user-plus"></i> Invite Friends</a>
                                        </div>
                                        <div class="col-md-3"></div>
                                        <div class="col-md-2">
                                            <span class="h5 mb-0 font-weight-bold text-gray-800">
                                                <a href="logout.jsp">Logout<i class="fas fa-sign-out-alt ml-1"></i></a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 md-12"></div>
                    </div>
                </div>
            </section>

            <section style="padding-top: 30px;">
                <div class="container-fluid top-margin">
                    <div class="row">
                        <div class="col-lg-1 md-12"></div>
                        <div class="col-lg-7 md-12 mr-5 ml-3 mb-4" style="height: 260px;">
                            <div class="card border-left-primary shadow h-100 pt-4">
                                <div class="card-body">
                                    <div id="buzz">
                                        <form action="driver" method="POST" id="form">
                                            <div class="form-row">
                                                <div class="form-group col-md-3"></div>
                                                <div class="form-group col-md-6">
                                                    <label for="loc" class="sr-only">Location</label>
                                                    <select id="loc" name="loc" class="form-control">
                                                      <option value="nil" selected>Choose...</option>
                                                      <option value="back">FUTO Back Gate</option>
                                                      <option value="nddc">NDDC Hostel</option>
                                                      <option value="hostel">Hostel A</option>
                                                      <option value="old">Old Registrar</option>
                                                      <option value="smat">SMAT Complex</option>
                                                      <option value="main">FUTO Main Gate</option>
                                                    </select>
                                                </div>
                                                <div class="form-group col-md-3"></div>
                                            </div>
                                            <div class="form-row">
                                                <div class="form-group col-md-3"></div>
                                                <div class="form-group col-md-6">
                                                    <label for="time" class="sr-only">Time Slot</label>
                                                    <select id="time" name="time" class="form-control">
                                                      <option value="nil" selected>8:15</option>
                                                    </select>
                                                </div>
                                                <div class="form-group col-md-3"></div>
                                            </div>
                                            <div class="form-row">
                                                <div class="form-group col-md-3"></div>
                                                <div class="form-group col-md-6">
                                                    <input class="btn btn-block btn-primary" type="submit" value="Send Buzz">
                                                </div>
                                                <div class="form-group col-md-3"></div>
                                            </div>
                                            <input type="text" value="send-buzz" name="source" hidden>
                                        </form>
                                    </div>
                                    <div id="invite" hidden>
                                        <form action="driver" method="POST" id="form">
                                            <div class="form-row">
                                                <div class="form-group col-md-3"></div>
                                                <div class="form-group col-md-6">
                                                    <label for="phones" class="sr-only">Phone Numbers</label>
                                                    <textarea name="phones" class="form-control" id="phones" placeholder="Enter phone numbers seperated by comma" rows="5" cols="50"></textarea>
                                                </div>
                                                <div class="form-group col-md-3"></div>
                                            </div>
                                            <div class="form-row">
                                                <div class="form-group col-md-3"></div>
                                                <div class="form-group col-md-6">
                                                    <input class="btn btn-block btn-primary" type="submit" value="Send Invite">
                                                </div>
                                                <div class="form-group col-md-3"></div>
                                            </div>
                                            <input type="text" value="invite" name="source" hidden>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 md-12">
                          <img class="image1" src="images/bus.png">
                        </div>
                        <div class="col-lg-1 md-12"></div>
                    </div>
                </div>
            </section>
        </div>
        <%
            }else if(user.getType().equals("driver")){
        %>
        <!--Driver Dashboard-->
        <div>
            <section style="padding-top: 30px;">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-1 md-12"></div>
                        <div class="col-lg-9 md-12 mr-5 ml-3 mb-4" style="height: 80px;">
                            <div class="card border-left-primary shadow h-100 py-1">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-2">
                                            <div class="h4 mb-0 font-weight-bold text-gray-800">
                                                <a href="dashboard.jsp">Dashboard</a>
                                            </div>
                                        </div>
                                        <div class="col-md-2">
                                        </div>
                                        <div class="col-md-3">
                                        </div>
                                        <div class="col-md-3"></div>
                                        <div class="col-md-2">
                                            <span class="h5 mb-0 font-weight-bold text-gray-800">
                                                <a href="logout.jsp">Logout<i class="fas fa-sign-out-alt ml-1"></i></a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 md-12"></div>
                    </div>
                </div>
            </section>

            <section style="padding-top: 30px;">
                <div class="container-fluid top-margin">
                    <div class="row">
                        <div class="col-lg-1 md-12"></div>
                        <div class="col-lg-7 md-12 mr-5 ml-3 mb-4" style="height: 260px;">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-sm">
                                            <thead>
                                                <tr style="text-align: center;">
                                                  <th>Time</th>
                                                  <th>B. Gate</th>
                                                  <th>NDDC</th>
                                                  <th>Hostel A</th>
                                                  <th>O. Registrar</th>
                                                  <th>SMAT</th>
                                                  <th>F. Gate</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr style="text-align: center;">
                                                    <td>8:15</td>
                                                    <td><a href="#">4<i class="fas fa-check-square ml-2"></i></a></td>
                                                    <td><a href="#">0<i class="fas fa-check-square ml-2"></i></a></td>
                                                    <td><a href="#">2<i class="fas fa-check-square ml-2"></i></a></td>
                                                    <td><a href="#">7<i class="fas fa-check-square ml-2"></i></a></td>
                                                    <td><a href="#">12<i class="fas fa-check-square ml-2"></i></a></td>
                                                    <td><a href="#">0<i class="fas fa-check-square ml-2"></i></a></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 md-12">
                          <img class="image1" src="images/bus.png">
                        </div>
                        <div class="col-lg-1 md-12"></div>
                    </div>
                </div>
            </section>
        </div>
        <%
            }
        %>
        <script>
            function check_a(){
                var phone = document.getElementById("phone").value;
                var psw = document.getElementById("psw").value;
                if(phone.length!==11){
                    alert("Please enter a valid phone number");
                }else if(psw.length<6){
                    alert("Password must be at least 6 characters");
                }else{
                    document.getElementById("form1").submit();
                }
            }
            function sendBuzz(){
                document.getElementById("invite").setAttribute("hidden",true);
                document.getElementById("buzz").removeAttribute("hidden");
            }
            function invite(){
                document.getElementById("buzz").setAttribute("hidden",true);
                document.getElementById("invite").removeAttribute("hidden");
            }
        </script>
    </body>
</html>
