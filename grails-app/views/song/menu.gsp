<html>
<head>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/scroller/1.4.4/css/scroller.dataTables.min.css">
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/scroller/1.4.4/js/dataTables.scroller.min.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/buttons/1.5.1/js/dataTables.buttons.min.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.flash.min.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/pdfmake.min.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/vfs_fonts.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.html5.min.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.print.min.js "></script>
</head>
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
                <li><g:link controller="song" action="deletedsongs">Recently Deleted Songs</g:link></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">My Account <b class="caret"></b></a>
                    <ul class="dropdown-menu">

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

            <form id="form-list-song">
                <legend>Your Songlist </legend>

                <div class="pull-right">
                    <a href="create.gsp" class="btn btn-default-btn-xs btn-success"><i class="glyphicon glyphicon-plus"></i> Add Song</a>
                </div>
                <table class="table table-bordered  table-hover">
                    <thead>
                    <tr>
                    <g:form id="searchForm" action="search">
                        <div class="form-group">
                        <th>  <input id="searchid" name="searchid" class="form-control" type="text" placeholder="Search a song by Id" class="form-control input-md" > </th>
                        </div>
                        <div class="form-group">
                        <th>  <input id="searchsongname" name="searchsongname" class="form-control" type="text" placeholder="Search a song by songname" class="form-control input-md" > </th>
                        </div>
                        <div class="form-group">
                        <th>  <input id="searchartist" name="searchartist" class="form-control" type="text" placeholder="Search a song by artist" class="form-control input-md" > </th>
                        </div>

                        <th> <g:actionSubmit  class="btn btn-primary btn-block" value="search"></g:actionSubmit></th>
                    </g:form>
                    </tr>
                    <tr>
                        <th>Id</th>
                        <th>Song Title</th>
                        <th>Artist</th>
                        <th>Action</th>
                    </tr>

                    </thead>
                    <tbody id="form-list-song-body">
                    <g:each in="${songList}">
                    <tr>
                        <td>${it.idsong}</td>
                        <td>${it.songname}</td>
                        <td>${it.artistname}</td>
                        <td>
                            <g:link role="button" action="details" title="view this song's details" class="btn btn-default btn-sm " id="${it.idsong}"> <i class="glyphicon glyphicon-eye-open text-primary"></i> </g:link>
                            <g:link role="button" action="edit" title="edit this song" class="btn btn-default btn-sm " id="${it.idsong}"> <i class="glyphicon glyphicon-edit text-primary"></i> </g:link>
                            <g:link role="button" action="delete" title="delete this song" class="btn btn-default btn-sm " id="${it.idsong}"> <i class="glyphicon glyphicon-trash text-danger"></i> </g:link>
                        </td>
                    </tr>
                    </g:each>
                    </tbody>
                </table>
            </form>


        </div>


        <br>



<div class="navbar navbar-default navbar-fixed-bottom" >
    <div class="container" >
        <p class="navbar-text pull-left">© 2021 - Designed by P. Milopoulos
            <a href="https://github.com/panamilo" target="_blank" >Git Repo</a>
        </p>
    </div>
</div>


</html>