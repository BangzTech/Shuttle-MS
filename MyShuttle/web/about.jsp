<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <title>MyShuttle | About Us</title>
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
            hr.divider { 
                margin: 0em;
                border-width: 2px;
            } 
            div.cut {
                margin-bottom: 0;
                padding-bottom: 0; 
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
                    <div class="col-lg-6 md-12 mr-5 ml-3 mb-4" style="height: 265px;">
                        <div class="card border-left-primary shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-left cut">
                                    <div class="col mr-2">
                                      <div class="h5 mb-0 font-weight-bold text-gray-800">Our Story</div>
                                    </div>
                                    <div class="col-auto">
                                      <i class="fas fa-info-circle fa-2x"></i>
                                    </div>
                                </div>
                                <hr class="divider"/>
                                <span>My shuttle™ is borne out of the desire to ease the difficulty that arises from the lack of communication between drivers and riders of the shuttle transport service (prior to vehicle boarding) available in the Federal University of Technology, Owerri. It provides features which enables riders and drivers alike, communicate their various locations within the shuttle vehicles' route at real-time. It uses the concept of IT-Solutions development to create bespoke solutions towards resolving this longstanding transport challenge within the institution.
                                </span>
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
    </body>
</html>

