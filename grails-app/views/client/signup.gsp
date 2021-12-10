<g:render template="clientheader" />

<body>
<div class="container" style="margin-top: 80px">
    <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Please fill in your credentials to register. </h3>
                </div>
                <div class="panel-body">
                    <g:form action="register" >
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="text" name="first_name" id="first_name" class="form-control input-md" placeholder="First Name" required>
                                </div>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <div class="form-group">
                                    <input type="text" name="last_name" id="last_name" class="form-control input-md" placeholder="Last Name" required>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <input type="text" name="username" id="username" class="form-control input-md" placeholder="Username" required>
                        </div>

                        <div class="form-group">
                            <input type="password" name="password" id="password" class="form-control input-md" placeholder="Password" required>
                        </div>

                        <div> ${flash.message} </div>
                        <input type="submit" value="Register" class="btn btn-info btn-block">
                        <g:link action="index" type="Submit"  class="btn btn-danger btn-block">Back</g:link>

                    </g:form>
                </div>
            </div>
        </div>
    </div>
</div>

<g:render template="/song/footer" />

</body>