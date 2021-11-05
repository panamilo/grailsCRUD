<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<header>
    <nav class="navbar navbar-inverse navbar-fixed-top transition main-nav" >
        <div class="container">

            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="menu.gsp">
                    <label>Grails Music App</label>
                </a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li><a class="page-scroll" href="#home">Home</a></li>
                    <li><a class="page-scroll" href="#about">My Account</a></li>
                    <li><g:link class="page-scroll" controller="client" action="logout" >Logout</g:link></li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<div class=col-md-12 style="margin-top: 80px">

    <form id="form-list-song">
        <legend>Search Results</legend>


        <table class="table table-bordered  table-hover">
            <thead>
            <tr>
                <th>Id</th>
                <th>Song Title</th>
                <th>Artist</th>
                <th>Action</th>
            </tr>

            </thead>
            <tbody id="form-list-song-body">
            <g:each in="${searchResult}">
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
