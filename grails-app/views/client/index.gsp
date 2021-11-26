<g:render template="clientheader" />


<div id="login-overlay" class="modal-dialog "style="margin-top: 80px">
    <div class="modal-content" >
        <div class="modal-header">
            <h3 class="modal-title" id="myWelcomeLabel">Welcome to the Grails Music App.</h3>
            <h5 class="modal-title" id="myLoginLabel">Please enter your credentials to log in.</h5>
        </div>
        <div class="modal-body">
            <div class="row">
                <div class="col-xs-6">
                    <div class="well">


                        <g:form id="loginForm" method="POST" action="login">
                            <div class="form-group">
                                <label for="username" class="control-label">Username</label>
                                <input type="text" class="form-control" id="username" name="username" title="Please enter you username" placeholder="kostas123" required>
                            </div>
                            <div class="form-group">
                                <label for="password" class="control-label">Password</label>
                                <input type="password" class="form-control" id="password" name="password" title="Please enter your password" required>
                            </div>
                            ${flash.message}
                            <button type="submit" class="btn btn-success btn-block">Login</button>
                        </g:form>
                        <h4>GORM</h4>
                        <div class="btn-group btn-toggle">
                            <button class="btn btn-default">ON</button>
                            <button class="btn btn-primary active">OFF</button>
                        </div>

                    </div>
                </div>
                <div class="col-xs-6">
                    <p class="lead">Register now for <span class="text-success">FREE</span></p>
                    <ul class="list-unstyled" style="line-height: 2">
                        <li><span class="fa fa-check text-success"></span> Organise your playlist </li>
                        <li><span class="fa fa-check text-success"></span> Edit or add any new song you want</li>
                        <li><span class="fa fa-check text-success"></span> View the details of your favourite songs anytime</li>
                    </ul>
                    <p><g:link action="signup" class="btn btn-info btn-block">REGISTER NOW</g:link></p>
                </div>
            </div>
        </div>
    </div>
</div>
<g:render template="/song/footer" />
</body>

