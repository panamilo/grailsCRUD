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
        <g:link class="navbar-brand" controller="song" action="menu">Grails Music App</g:link>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

            <ul class="nav navbar-nav navbar-right" style="margin-right: 200px">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">My Account <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><g:link controller="song" action="deletedsongs">Recently Deleted Songs</g:link></li>
                        <li><g:link controller="client" action="privacy">Privacy Settings</g:link></li>
                        <li class="divider"></li>
                        <li><g:link controller="client" action="logout">Logout</g:link></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </nav>


</header>
<div class=col-md-12 style="margin-top: 80px">

    <div class="col-md-12">

<g:form action="editSong" class="form-horizontal">
<fieldset>

    <!-- Form Name -->
    <legend>Change your password</legend>

    <!-- Text input-->

    <div class="form-group">
        <label class="col-md-4 control-label" for="currentPassword">Current Password</label>
        <div class="col-md-4">
            <input id="currentPassword" name="currentPassword" type="text" placeholder="Your Current Password" class="form-control input-md" required>
            <span class="help-block">Please fill in your current Password </span>
        </div>
    </div>

<div class="form-group">
    <label class="col-md-4 control-label" for="newPassword">New Password</label>
    <div class="col-md-4">
        <input id="newPassword" name="newPassword" class="form-control" placeholder="Your New Password" type="form-control input-md" required>
        <span class="help-block">Please fill in your new Password </span></div>
</div>

<div class="form-group">
    <label class="col-md-4 control-label" for="confirmPassword">Confirm your Password</label>
    <div class="col-md-4">
        <input id="confirmPassword" name="confirmPassword" type="text" placeholder="Confirm your Password" class="form-control input-md" required>
    </div>
</div>
<!-- Button -->
<div class="form-group">
    <label class="col-md-4 control-label" for="btn-save"></label>
    <div class="col-md-4">
        <button id="btn-save" name="btn-save" class="btn btn-success">Save</button>
        <g:link controller="song" action="menu" class="btn btn-default-btn-xs btn-danger">Cancel</g:link>
        ${flash.message}
    </div>
</div>
</fieldset>
</g:form>

    </div>
</div>


<br>



<div class="navbar navbar-default navbar-fixed-bottom" >
    <div class="container" >
        <p class="navbar-text pull-left">© 2021 - Designed by P. Milopoulos
            <a href="https://github.com/panamilo" target="_blank" >Git Repo</a>
        </p>
    </div>
</div>
