<g:render template="header" />
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs/dt-1.11.3/datatables.min.css"/>
<script type="text/javascript" src="https://cdn.datatables.net/v/bs/dt-1.11.3/datatables.min.js"></script>
<g:if test="${gormStatus==true}">
<script>
    $(document).ready(function() {
         $('#deletedSongs').DataTable( {
            "ajax": {
                "url": "${createLink(controller: 'song', action: 'deletedList',params:[gormStatus:gormStatus])}",
                dataType: 'json',
                "dataSrc": "",
                select: true

            },
            "fnRowCallback": function( nRow, aData ){
                var id=aData[.0]
                $('td:eq(3)', nRow).html('<a class="btn btn-default btn-sm " href="undodelete/' + id+ '">' +
                    '<i class="glyphicon glyphicon-repeat text-primary"></i>' + '</a>' );
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
            var table = $('#deletedSongs').DataTable( {
                "ajax": {
                    "url": "${createLink(controller: 'song', action: 'deletedList',params:[gormStatus:gormStatus])}",
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
</g:else>

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
