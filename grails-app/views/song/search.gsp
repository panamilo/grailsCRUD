<g:render template="header" />
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



<g:render template="footer" />
