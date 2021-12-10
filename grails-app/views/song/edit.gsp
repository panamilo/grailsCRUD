<g:render template="header" />
<link href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css" rel="stylesheet" media="screen">
<div class=container style="margin-top: 80px">
    <div class="modal-content">
        <div class="row">

<g:if test="${gormStatus==true}">
    <div class="col-md-12">
<g:form action="editSong" class="form-horizontal">
    <fieldset>

        <!-- Form Name -->
        <div class="well">
        <legend>Edit this song</legend>
    </div>
        <!-- Text input-->
        <div class="modal-body">
         <div class="form-group">
        <g:hiddenField id="id" name="id" value="${song.id}" ></g:hiddenField>
            <label class="col-md-4 control-label" for="songname">Title</label>
            <div class="col-md-4">
                <input id="songname" name="songname" type="text" value="${song.songname}" class="form-control input-md" required>
                <span class="help-block">Change this song's title</span>
            </div>
        </div>


        <div class="form-group">
            <label class="col-md-4 control-label" for="songalbum">Album</label>
            <div class="col-md-4">
                <input id="songalbum" name="songalbum" class="form-control" value="${song.album}" type="form-control input-md" required>
                <span class="help-block">Change this song's album</span></div>
        </div>

            <div class="form-group">
                <label class="col-md-4 control-label" for="songgenre">Genre</label>
                <div class="col-md-4">
                    <input id="songgenre" name="songgenre" type="text" value="${song.genre}" class="form-control input-md" required>
                    <span class="help-block">Change this song's genre</span>
                </div>
            </div>
        <div class="form-group">
            <label class="col-md-4 control-label">Artist</label>
            <div class="col-md-4">
    <g:select id="songartist" name="songartist" from="${artistList.artistname}"  value="${song.artist.artistname}" />
    <span class="help-block">Choose your song's artist</span>
    </div>
</div>
    <!-- Button -->
    <div class="form-group">
        <label class="col-md-4 control-label" for="btn-save"></label>
        <div class="col-md-4">
            <button id="btn-save" name="btn-save" class="btn btn-success">Save</button>
            <g:link action="menu" params="[gormStatus: gormStatus]" class="btn btn-default-btn-xs btn-danger">Cancel</g:link>
            ${flash.message}
        </div>
        </div>
    </div>

    </fieldset>
</g:form>
</div>
</div>
</div>
</g:if>
<g:else>
    <g:form action="editSong" class="form-horizontal">
        <fieldset>

            <!-- Form Name -->
            <legend>Edit this song</legend>

            <!-- Text input-->
            <div class="form-group">
                <g:hiddenField id="id" name="id" value="${song.idsong.join()}" ></g:hiddenField>
                <label class="col-md-4 control-label" for="name">Title</label>
                <div class="col-md-4">
                    <input id="name" name="name" type="text" value="${song.songname.join()}" class="form-control input-md" required>
                    <span class="help-block">Change this song's title</span>
                </div>
            </div>


            <div class="form-group">
                <label class="col-md-4 control-label" for="album">Album</label>
                <div class="col-md-4">
                    <input id="album" name="album" class="form-control" value="${song.album.join()}" type="form-control input-md" required>
                    <span class="help-block">Change this song's album</span></div>
            </div>

            <div class="form-group">
                <label class="col-md-4 control-label" for="genre">Genre</label>
                <div class="col-md-4">
                    <input id="genre" name="genre" type="text" value="${song.genre.join()}" class="form-control input-md" required>
                    <span class="help-block">Change this song's genre</span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-4 control-label">Artist</label>
                <div class="col-md-4">
                    <g:select id="artist" name="artist" from="${artistList.artistname}"  value="${song.artistname.join()}" />
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

</g:else>

</div>


<br>


<g:render template="footer" />