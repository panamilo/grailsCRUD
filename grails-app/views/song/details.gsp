<g:render template="header" />
<div class=col-md-12 style="margin-top: 80px" >

    <legend>Song Details </legend>
<g:if test="${gormStatus==true}">
    <div class="container" style="margin-top: 80px">
        <div class="row centered-form">
            <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <table class="table">
                            <thead>
                            <tr>
                                <th class="text-right">Songname: </th><td class="text-left">${song.songname}</td>
                            </tr>
                            <tr>
                                <th class="text-right">Album: </th><td class="text-left">${song.album}</td>
                            </tr>
                            <tr>
                                <th class="text-right">Genre: </th><td class="text-left">${song.genre}</td>
                            </tr>
                            <tr>
                                <th class="text-right">Artist: </th><td class="text-left">${song.artist.artistname}</td>
                            </tr>

                        </table>


                    </div>
<g:link action="menu" params="[gormStatus: gormStatus]" class="btn btn-default btn-block btn-success"> Back </g:link>
</div>
</g:if>
    <g:else>

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
<g:link action="menu" params="[gormStatus: gormStatus]" class="btn btn-default btn-block btn-success"> Back </g:link>
</div>
    </g:else>

</div>


<br>

<g:render template="footer" />