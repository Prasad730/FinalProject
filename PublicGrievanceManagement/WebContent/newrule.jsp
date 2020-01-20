<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">




    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <title>Information</title>
    <style>
          .carousel-inner img {
      width: 100%;
      height: 100%;
    }

    .footer {
      background: #152F4F;
      color: white;
    }

    .links ul {
      list-style-type: none;
    }

    li a {
      color: white;
      transition: color .2s;
    }

    .about-company i {
      font-size: 25px;
    }

    a {
      color: white;
      transition: color .2s;
    }

    .location i {
      font-size: 18px;
    }

    .copyright p {
      border-top: 1px solid rgba(255, 255, 255, .1);
    }

        .collapsible {
            background-color: #777;
            color: white;
            cursor: pointer;
            padding: 18px;
            width: 100%;
            border: none;
            text-align: left;
            outline: none;
            font-size: 15px;
        }

        .active,
        .collapsible:hover {
            background-color: #555;
        }

        .collapsible:after {
            content: '\002B';
            color: white;
            font-weight: bold;
            float: right;
            margin-left: 5px;
        }

        .active:after {
            content: "\2212";
        }

        .content {
            padding: 0 18px;
            max-height: 0;
            overflow: hidden;
            transition: max-height 0.2s ease-out;
            background-color: #f1f1f1;
        }
    </style>
</head>

<body style="background-image: linear-gradient(to top,)" ;>


    <div class="jumbotron text-white " style="background-color:rgb(24, 53, 100)">
      <h1 align="center" style="font-family: Roboto" ;>Public Grievance Portal</h1 align="center">
  
    </div>
  
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
      <img src="${pageContext.request.contextPath}/resources/emb.jpg" alt="Jane" style="width:100%">
  
      <ul class="navbar-nav">
        <li class="nav-item ">
          <a class="nav-link" href="newrule.jsp">
            <h3>New Rules</h3>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="contactus.jsp">
            <h3>Contact Us</h3>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="aboutus.jsp">
            <h3>About Us</h3>
          </a>
        </li>
      </ul>
  
    </nav>
    <h2>Daily Updates and Regulations</h2>

    <button class="collapsible">Energy/Electricity Updates</button>
    <div class="content">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
            dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex
            ea commodo consequat.</p>
    </div>


    <button class="collapsible">Water Updates</button>
    <div class="content">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
            dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex
            ea commodo consequat.</p>
    </div>

    <button class="collapsible">Traffic Updates and Routes</button>
    <div class="content">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
            dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex
            ea commodo consequat.</p>
    </div>

    <button class="collapsible"> New Traffic Rules/Ammends </button>
    <div class="content">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
            dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex
            ea commodo consequat.</p>
    </div>

    <script>
        var coll = document.getElementsByClassName("collapsible");
        var i;

        for (i = 0; i < coll.length; i++) {
            coll[i].addEventListener("click", function () {
                this.classList.toggle("active");
                var content = this.nextElementSibling;
                if (content.style.maxHeight) {
                    content.style.maxHeight = null;
                } else {
                    content.style.maxHeight = content.scrollHeight + "px";
                }
            });
        }
    </script>

<div class="footer fixed-bottom ">
    <div class="container ">
      <div class="row">
        <div class="col-lg-5 col-xs-12 about-company">
          <h2>Heading</h2>
          <p class="pr-5 text-white-50">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ac ante mollis
            quam tristique convallis </p>
          <p><a href="#"><i class="fa fa-facebook-square mr-1"></i></a><a href="#"><i
                class="fa fa-linkedin-square"></i></a></p>
        </div>
        <div class="col-lg-3 col-xs-12 links">
          <h4 class="mt-lg-0 mt-sm-3">Links</h4>
          <ul class="m-0 p-0">
            <li>- <a href="#">Lorem ipsum</a></li>
            <li>- <a href="#">Nam mauris velit</a></li>

          </ul>
        </div>
        <div class="col-lg-4 col-xs-12 location">
          <h4 class="mt-lg-0 mt-sm-4">Location</h4>
          <p>22, Lorem ipsum dolor, consectetur adipiscing</p>
          <p class="mb-0"><i class="fa fa-phone mr-3"></i>(541) 754-3010</p>
          <p><i class="fa fa-envelope-o mr-3"></i>info@hsdf.com</p>
        </div>
      </div>
      <div class="row mt-5">
        <div class="col copyright">
          <p class=""><small class="text-white-50">© 2019. All Rights Reserved.</small></p>
        </div>
      </div>
    </div>
</body>

</html>