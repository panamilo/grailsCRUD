<g:render  template="/song/header" />
</header>
<div class=col-md-12 style="margin-top: 80px">

    <div class="col-md-12">

<g:form action="editPassword" class="form-horizontal">
<fieldset>

    <!-- Form Name -->
    <legend>Change your password</legend>

    <!-- Text input-->

    <div class="form-group">
        <label class="col-md-4 control-label" for="currentPassword">Current Password</label>
        <div class="col-md-4">
            <input id="currentPassword" name="currentPassword" type="text" placeholder="Your Current Password" class="form-control input-md" required>
            <span class="help-block">Please fill in your current Password </span>
        </div>
    </div>

<div class="form-group">
    <label class="col-md-4 control-label" for="newPassword">New Password</label>
    <div class="col-md-4">
        <input id="newPassword" name="newPassword" class="form-control" placeholder="Your New Password" type="form-control input-md" required>
        <span class="help-block">Please fill in your new Password </span></div>
</div>

<div class="form-group">
    <label class="col-md-4 control-label" for="confirmPassword">Confirm your Password</label>
    <div class="col-md-4">
        <input id="confirmPassword" name="confirmPassword" type="text" placeholder="Confirm your Password" class="form-control input-md" required>
    </div>
</div>
<!-- Button -->
<div class="form-group">
    <label class="col-md-4 control-label" for="btn-save"></label>
    <div class="col-md-4">
        <button id="btn-save" name="btn-save" class="btn btn-success">Save</button>
        <g:link controller="song" action="menu" class="btn btn-default-btn-xs btn-danger">Cancel</g:link>
        ${flash.message}
    </div>
</div>
</fieldset>
</g:form>

    </div>
</div>


<br>


<g:render template="/song/footer" />
