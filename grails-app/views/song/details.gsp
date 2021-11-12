<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
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
<div class=col-md-12 style="margin-top: 80px" >

    <legend>Song Details </legend>

    <div class="container" style="margin-top: 80px">
        <div class="row centered-form">
            <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <table class="table">
                            <thead>
                            <tr>
                                <th class="text-right">Songname: </th><td class="text-left">${song.songname.join()}</td>
                            </tr>
                            <tr>
                                <th class="text-right">Album: </th><td class="text-left">${song.album.join()}</td>
                            </tr>
                            <tr>
                                <th class="text-right">Genre: </th><td class="text-left">${song.genre.join()}</td>
                            </tr>
                            <tr>
                                <th class="text-right">Artist: </th><td class="text-left">${song.artistname.join()}</td>
                            </tr>

                        </table>


                    </div>
<g:link action="menu" class="btn btn-default btn-block btn-success"> Back </g:link>
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