<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>


<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
    <%-- ------ CSS ------ --%>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="css/animate.min.css" rel="stylesheet" type="text/css" />
    <link href="css/prettyPhoto.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/responsive.css" rel="stylesheet" type="text/css" />
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
        rel="stylesheet" type="text/css" />



    <!--<if lt IE 9>>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <!<endif>-->
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/jquery.prettyPhoto.js" type="text/javascript"></script>
    <script src="js/jquery.isotope.min.js" type="text/javascript"></script>
    <script src="js/main.js" type="text/javascript"></script>
    <script src="js/wow.min.js" type="text/javascript"></script>
    <style type="text/css">
    .aboutSection
    {
        background-color:Silver;
    }
    .img
    {
        height:100px;
        width:100px;
        right:400px;
    }
    #p1
    {
        height:70px;
    }
        .style1
        {
            left: 0px;
            top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="Server">
    <section id="main-slider" class="no-margin">
        <div class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#main-slider" data-slide-to="0" class="active"></li>
                <li data-target="#main-slider" data-slide-to="1"></li>
                <li data-target="#main-slider" data-slide-to="2"></li>
                
            </ol>
            <div class="carousel-inner">

                <div class="item active" style="background-image: url(images/slider/slide2.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                  <style>
                                   h1 {
                                        color: black; 
                                       }</style>
                                    <h1 class="animation animated-item-1">Alchemist</h1>
                                    <h2 class="animation animated-item-2">The Alchemist tells the story of a young shepherd named Santiago who is able to find a treasure beyond his wildest dreams. Along the way, he learns to listen to his heart and, more importantly, realizes that his dreams, or his Personal Legend, are not just his but part of the Soul of the Universe.</h2>
                                    <a class="btn-slide animation animated-item-3" href="SignIn.aspx">Read More</a>
                                </div>
                            </div>

                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <img src="images/slider/C.png" class="img-responsive">
                                </div>
                            </div>

                        </div>
                    </div>
                </div><!--/.item-->

                <div class="item" style="background-image: url(images/slider/slide3.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">Sell Your Books</h1>
                                    <a class="btn-slide animation animated-item-3" href="SignIn.aspx">Read More</a>
                                </div>
                            </div>

                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <img src="images/slider/Cpp.png" class="img-responsive">
                                </div>
                            </div>

                        </div>
                    </div>
                </div><!--/.item-->

                <div class="item" style="background-image: url(images/slider/slide4.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">Artificial Intelligence Books are Available</h1>
                                    <h2 class="animation animated-item-2">Through this AI tutorial, you will learn about the Best Books on Artificial Intelligence for beginners to experts that will help you to become professional. You will learn about various artificial intelligence books that are suggested by experts. Here, you will get the best books to learn artificial intelligence.</h2>
                                    <a class="btn-slide animation animated-item-3" href="SignIn.aspx">Read More</a>
                                </div>
                            </div>
                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <img src="images/slider/java.png" class="img-responsive">
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--/.item-->


               
                

                           


               
                

          
            </div><!--/.carousel-inner-->
        </div><!--/.carousel-->
        <a class="prev hidden-xs" href="#main-slider" data-slide="prev">
            <i class="fa fa-chevron-left"></i>
        </a>
        <a class="next hidden-xs" href="#main-slider" data-slide="next">
            <i class="fa fa-chevron-right"></i>
        </a>
    </section>
    <!--/#main-slider-->










    <!--Subjects-->
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2>
                    What should you know before starting Practice and Exam?</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-3 col-sm-6">
                <a href="" class="thumbnail">
                    <p>
                        Alchemist</p>
                    <img src="images/slider/alchemist.jpg" />
                </a>
            </div>
            <div class="col-lg-4 col-md-3 col-sm-6">
                <a href="SignIn.aspx" class="thumbnail">
                    <p>
                        Abstract Book</p>
                    <img src="images/slider/art_bookcover.png" />
                </a>
            </div>
            <div class="col-lg-4 col-md-3 col-sm-6">
                <a href="SignIn.aspx" class="thumbnail">
                    <p>
                        Gandhi 150</p>
                    <img src="images/slider/GandhiBook.jpg" />
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6">
                <a href="SignIn.aspx" class="thumbnail">
                    <p>
                        Human nature</p>
                    <img src="images/slider/human%20nature%20book.jpg" />
                </a>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <a href="SignIn.aspx" class="thumbnail">
                    <p>
                        Fashion Book</p>
                    <img src="images/slider/Fashion%20Book.jpg" />
                </a>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <a href="SignIn.aspx" class="thumbnail">
                    <p>
                        Principles to fortune</p>
                    <img src="images/slider/principles%20to%20fortune.png" />
                </a>
            </div>
        </div>
    </div>
    
    <!--Programmin langugge used-->
    <div>   
    <section id="middle">
        <div class="container">
            <div class="row">
                <div class="style1">
                    <div class="skill" id="p1">
                        
                </div><!--/.col-sm-6-->
                </div>
                </div>
                </div>
                </section>
                </div>

</asp:Content>
