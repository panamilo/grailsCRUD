<g:render template="header" />
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs/dt-1.11.3/datatables.min.css"/>
    <script type="text/javascript" src="https://cdn.datatables.net/v/bs/dt-1.11.3/datatables.min.js"></script>
<g:if test="${gormStatus==true}">
    <script>
        $(document).ready(function() {
       var table = $('#songList').DataTable( {
            "ajax": {
                "url": "${createLink(controller: 'song', action: 'songList',params:[gormStatus:gormStatus])}",
                dataType: 'json',
                "dataSrc": "",
                select: true

            },
           "fnRowCallback": function( nRow, aData ){
                var id=aData[.0];
               $('td:eq(3)', nRow).html('<a class="btn btn-default btn-sm "  href="details/' + id+ '">' +
                   '<i class="glyphicon glyphicon-eye-open text-primary"></i>' + '</a>' + ' <a class="btn btn-default btn-sm " href="edit/' + id+ '">' +
                   '<i class="glyphicon glyphicon-edit text-primary"></i>' + '</a>' + ' <a class="btn btn-default btn-sm "  data-toggle="modal" data-target="#confirmDelete" data-href="delete/' + id+ '">' +
                   '<i class="glyphicon glyphicon-trash text-danger"></i>' + '</a>' );
               $('#confirmDelete').on('show.bs.modal', function (e) {
                   $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
               });
               return nRow;


           },
            "columns": [
                { "data": ".0"  },
                { "data": ".1"  },
                { "data": ".2" },
                {"defaultContent": "action"}
                ]
        });




         } );

    </script>
</g:if>
<g:else>
    <script>
    $(document).ready(function() {
       var table = $('#songList').DataTable( {
            "ajax": {
                "url": "${createLink(controller: 'song', action: 'songList',params:[gormStatus:gormStatus])}",
                dataType: 'json',
                "dataSrc": "",
                select: true

            },
           "fnRowCallback": function( nRow, aData ){
                var id=aData['idsong']
               $('td:eq(3)', nRow).html('<a class="btn btn-default btn-sm " href="details/' + id+ '">' +
'<i class="glyphicon glyphicon-eye-open text-primary"></i>' + '</a>' + ' <a class="btn btn-default btn-sm " href="edit/' + id+ '">' +
'<i class="glyphicon glyphicon-edit text-primary"></i>' + '</a>' + ' <a class="btn btn-default btn-sm "  data-toggle="modal" data-target="#confirmDelete" data-href="delete/' + id+ '">' +
'<i class="glyphicon glyphicon-trash text-danger"></i>' + '</a>' );
               $('#confirmDelete').on('show.bs.modal', function (e) {
                   $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
               });
               return nRow;


           },
            "columns": [
                { "data": "idsong"  },
                { "data": "songname"  },
                { "data": "artistname" },
                {"defaultContent": "action"}
                ]
        });




         } );

    </script>
</g:else>


<div id="confirmDelete" class="modal fade">
    <div class="modal-dialog modal-confirm">
        <div class="modal-content">
            <div class="modal-header flex-column">
                <h4 class="modal-title w-100">Are you sure?</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true" style="margin-top: -30px">&times;</button>
            </div>
            <div class="modal-body">
                <p>This process will delete this song from your playlist.</p>
            </div>
            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <a class="btn btn-danger btn-ok">Delete</a>
            </div>
        </div>
    </div>
</div>



        <div class=col-md-12 style="margin-top: 80px">



                <legend>Your Songlist<div class="pull-right"> ${flash.message} </div> </legend>


            <div>
    <table name="songList" id="songList" class="table table-bordered  table-hover" >
    <thead>
        <tr>
            <th>Number</th>
            <th>Song Title</th>
            <th>Artist</th>
            <th>Action</th>
        </tr>
    </thead>
        <tbody>
        </tbody>
    </table>

                <div class="pull-right">
                    <g:link action="create" params="[gormStatus: gormStatus]" class="btn btn-success"><i class="glyphicon glyphicon-plus"></i> Add Song</g:link>
                </div>


</div>
        </div>



<br>


<g:render template="footer" />