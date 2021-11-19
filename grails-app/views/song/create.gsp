<g:render template="header" />
<div class="container" style="margin-top: 80px">
    <div class="row">


        <link href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css" rel="stylesheet" media="screen">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" type="text/css" rel="stylesheet">



        <!-- FORM  -->
        <div class="col-md-12">

            <g:form action="createSong" class="form-horizontal">
                <fieldset>

                    <!-- Form Name -->
                    <legend>Add new song</legend>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="songname">Title</label>
                        <div class="col-md-4">
                            <input id="songname" name="songname" type="text" placeholder="Your song's title" class="form-control input-md" required>
                            <span class="help-block">The title of the song you want to add</span>
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-md-4 control-label" for="songalbum">Album</label>
                        <div class="col-md-4">
                            <input id="songalbum" name="songalbum" class="form-control" placeholder="etc. Unstoppable" type="form-control input-md" required>
                            <span class="help-block">The title of the song you want to add</span></div>
                    </div>

                        <div class="form-group">
                            <label class="col-md-4 control-label" for="songgenre">Genre</label>
                            <div class="col-md-4">
                                <input id="songgenre" name="songgenre" type="text" placeholder="Your song's genre" class="form-control input-md" required>
                                <span class="help-block">Your song's genre</span>
                            </div>
                        </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label">Artist</label>
                        <div class="col-md-4">
                            <g:select id="songartist" name="songartist" from="${artistList.artistname}" noSelection="${['null':'Select One...']}" />
                            <span class="help-block">Choose your song's artist</span>
                        </div>
                    </div>
                        <!-- Button -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="btn-save"></label>
                            <div class="col-md-4">
                                <button id="btn-save" name="btn-save" class="btn btn-success">Save</button>
                                <g:link action="menu" class="btn btn-default-btn-xs btn-danger">Cancel</g:link>
                            </div>
                        </div>
                    ${flash.message}

                </fieldset>
            </g:form>


        </div>

</div>
</div>
<g:render template="footer" />
