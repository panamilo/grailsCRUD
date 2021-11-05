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
<div class=col-md-12 style="margin-top: 80px">

    <div class="col-md-12">

<g:form action="editSong" class="form-horizontal">
    <fieldset>

        <!-- Form Name -->
        <legend>Edit this song</legend>

        <!-- Text input-->
        <div class="form-group">
        <g:hiddenField id="id" name="id" value="${song.idsong.join()}" ></g:hiddenField>
            <label class="col-md-4 control-label" for="songname">Title</label>
            <div class="col-md-4">
                <input id="songname" name="songname" type="text" value="${song.songname.join()}" class="form-control input-md" required>
                <span class="help-block">Change this song's title</span>
            </div>
        </div>


        <div class="form-group">
            <label class="col-md-4 control-label" for="songalbum">Album</label>
            <div class="col-md-4">
                <input id="songalbum" name="songalbum" class="form-control" value="${song.album.join()}" type="form-control input-md" required>
                <span class="help-block">Change this song's album</span></div>
        </div>

            <div class="form-group">
                <label class="col-md-4 control-label" for="songgenre">Genre</label>
                <div class="col-md-4">
                    <input id="songgenre" name="songgenre" type="text" value="${song.genre.join()}" class="form-control input-md" required>
                    <span class="help-block">Change this song's genre</span>
                </div>
            </div>
        <div class="form-group">
            <label class="col-md-4 control-label">Artist</label>
            <div class="col-md-4">
    <g:select id="songartist" name="songartist" from="${artistList.artistname}"  value="${song.artistname.join()}" />
    <span class="help-block">Choose your song's artist</span>
    </div>
</div>
    <!-- Button -->
    <div class="form-group">
        <label class="col-md-4 control-label" for="btn-save"></label>
        <div class="col-md-4">
            <button id="btn-save" name="btn-save" class="btn btn-success">Save</button>
            <g:link action="menu" class="btn btn-default-btn-xs btn-danger">Cancel</g:link>
            ${flash.message}
        </div>
    </div>
    </fieldset>
</g:form>


</div>


<br>



<div class="navbar navbar-default navbar-fixed-bottom" >
    <div class="container" >
        <p class="navbar-text pull-left">© 2021 - Designed by P. Milopoulos
            <a href="https://github.com/panamilo" target="_blank" >Git Repo</a>
        </p>
    </div>
</div>
</div>