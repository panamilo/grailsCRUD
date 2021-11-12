<%--
  Created by IntelliJ IDEA.
  User: milop
  Date: 10/5/2021
  Time: 4:42 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>

<!------ Include the above in your HEAD tag ---------->
<header>
    <nav class="navbar navbar-default" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <g:link class="navbar-brand" controller="client" action="index">Grails Music App</g:link>
        </div>

    </nav>
</header>

<body>
<div class="container" style="margin-top: 80px">
    <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Please fill in your credentials to register. </h3>
                </div>
                <div class="panel-body">
                    <g:form action="register" >
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="text" name="first_name" id="first_name" class="form-control input-sm" placeholder="First Name" required>
                                </div>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="text" name="last_name" id="last_name" class="form-control input-sm" placeholder="Last Name" required>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <input type="text" name="username" id="username" class="form-control input-sm" placeholder="Username" required>
                        </div>

                        <div class="form-group">
                            <input type="password" name="password" id="password" class="form-control input-sm" placeholder="Password" required>
                        </div>

                        <div> ${flash.message} </div>
                        <input type="submit" value="Register" class="btn btn-info btn-block">

                    </g:form>
                </div>
            </div>
        </div>
    </div>
</div>

<footer>

    <div class="navbar navbar-default navbar-fixed-bottom" >
        <div class="container" >
            <p class="navbar-text pull-left">© 2021 - Designed by P. Milopoulos
                <a href="https://github.com/panamilo" target="_blank" >Git Repo</a>
            </p>
        </div>
    </div>


</footer>

</body>