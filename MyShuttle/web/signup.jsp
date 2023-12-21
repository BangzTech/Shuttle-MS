<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <title>MyShuttle | SignUp</title>
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
                            <div class="collapse navbar-collapse nav-move " id="navbarSupportedContent">
                                <ul class="navbar-nav ml-auto ">
                                    <li class="nav-item active">
                                        <a class="nav-link pr-4 text-primary" href="about.jsp">About</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link pr-4 text-primary" href="signin.jsp">Sign In</a>
                                    </li>       
                                </ul>
                                <a class="btn btn-outline-primary btn-acct " href="signup.jsp">Sign Up</a>
                            </div>       
                        </nav>
                    </div>
                    <div class="col-lg-1 md-12"></div>
                </div>
            </div>
        </section>
        <section style="padding-top: 150px;">
            <div class="container-fluid top-margin ">
                <div class="row">
                    <div class="col-lg-1 md-12"></div>
                    <div class="col-lg-6 md-12 mr-5 ml-3 mb-4" style="height: 260px;">
                        <div class="card border-left-primary shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-left">
                                    <div class="col mr-2">
                                      <div class="h4 mb-0 font-weight-bold text-gray-800">SignUp</div>
                                    </div>
                                    <div class="col-auto">
                                      <i class="fas fa-marker fa-2x "></i>
                                    </div>
                                </div>
                                <hr />
                                <form action="driver" method="POST" id="form">
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="name" class="sr-only">First Name</label>
                                            <input type="text" class="form-control" name="name" id="name" placeholder="First Name">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="phone" class="sr-only">Phone Number</label>
                                            <input type="text" class="form-control" name="phone" id="phone" placeholder="Phone Number" maxlength="11">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="psw" class="sr-only">Password</label>
                                            <input type="password" class="form-control" name="psw" id="psw" placeholder="Password">
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="psw2" class="sr-only">Password</label>
                                            <input type="password" class="form-control" name="psw2" id="psw2" placeholder="Confirm Password">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="type" class="sr-only">Type</label>
                                            <select id="type" name="type" class="form-control">
                                              <option value="nil" selected>Choose...</option>
                                              <option value="commuter">Commuter</option>
                                              <option value="driver">Driver</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <input class="btn btn-block btn-primary" type="button" onclick="check()" value="Sign Up">
                                        </div>
                                    </div>
                                    <input type="text" value="signup" name="source" hidden>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-1 md-12"></div>
                    <div class="col-lg-3 md-12">
                      <img class="image1" src="images/bus.png">
                    </div>
                </div>
            </div>
        </section>
        <script src="js/functions.js"></script>
    </body>
</html>
