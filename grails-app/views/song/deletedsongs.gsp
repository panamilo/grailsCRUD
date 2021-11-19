<g:render template="header" />
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs/dt-1.11.3/datatables.min.css"/>
<script type="text/javascript" src="https://cdn.datatables.net/v/bs/dt-1.11.3/datatables.min.js"></script>

<script>
    $(document).ready(function() {
         $('#deletedSongs').DataTable( {
            "ajax": {
                "url": "${createLink(controller: 'song', action: 'deletedList')}",
                dataType: 'json',
                "dataSrc": "",
                select: true

            },
            "fnRowCallback": function( nRow, aData ){
                var id=aData['idsong']
                $('td:eq(3)', nRow).html('<a class="btn btn-default btn-sm " href="undodelete/' + id+ '">' +
                    '<i class="glyphicon glyphicon-repeat text-primary"></i>' + '</a>' );
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

<div class=col-md-12 style="margin-top: 80px">

        <legend>Deleted Songs</legend>

         <table name="deletedSongs" id="deletedSongs" class="table table-bordered  table-hover" >
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



</div>


<br>

<g:render template="footer" />
