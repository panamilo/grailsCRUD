<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <!--<![endif]-->

<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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


<div id="login-overlay" class="modal-dialog "style="margin-top: 80px">
    <div class="modal-content" >
        <div class="modal-header">
            <h3 class="modal-title" id="myWelcomeLabel">Welcome to the Grails Music App.</h3>
            <h5 class="modal-title" id="myLoginLabel">Please enter your credentials to log in.</h5>
        </div>
        <div class="modal-body">
            <div class="row">
                <div class="col-xs-6">
                    <div class="well">


                        <g:form id="loginForm" method="POST" action="login">
                            <div class="form-group">
                                <label for="username" class="control-label">Username</label>
                                <input type="text" class="form-control" id="username" name="username" title="Please enter you username" placeholder="kostas123" required>
                            </div>
                            <div class="form-group">
                                <label for="password" class="control-label">Password</label>
                                <input type="password" class="form-control" id="password" name="password" title="Please enter your password" required>
                            </div>
                            <div id="loginErrorMsg" class="alert alert-error hide">Wrong username or password</div>
                            ${flash.message}
                            <button type="submit" class="btn btn-success btn-block">Login</button>
                        </g:form>

                    </div>
                </div>
                <div class="col-xs-6">
                    <p class="lead">Register now for <span class="text-success">FREE</span></p>
                    <ul class="list-unstyled" style="line-height: 2">
                        <li><span class="fa fa-check text-success"></span> Organise your playlist </li>
                        <li><span class="fa fa-check text-success"></span> Edit or add any new song you want</li>
                        <li><span class="fa fa-check text-success"></span> View the details of your favourite songs anytime</li>
                    </ul>
                    <p><a href="signup" class="btn btn-info btn-block">REGISTER NOW</a></p>
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

