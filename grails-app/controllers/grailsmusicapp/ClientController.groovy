package grailsmusicapp

class ClientController {
    def loginService
    def registerService
    def editPasswordService

    def index() {

    }
    def login() {


        def isValid=loginService.getValidate(params.username,params.password)
        if(isValid){
            session.setAttribute('id_client',isValid.id_client)
            def userid = session.getAttribute('id_client')
            println (userid)
            redirect(controller: "song", action: "menu")
        }
        else{
            flash.message="Wrong username or password."
            redirect(action: 'index')
        }

    }
    def logout() {
        if(session.getAttribute('id_client')!=null) {
            session.invalidate()
            redirect(action: 'index')
        }
    }
    def signup() {

    }
    def register() {

        boolean existsUser= registerService.getUsername(params.username)
        if(!existsUser){
            registerService.saveClient(params.first_name,params.last_name,params.username,params.password)
            redirect (action: 'index')
        }
        else{
            flash.message="Username unavailable."
            redirect (action: 'signup')
        }
    }
    def privacy() {

    }

    def editPassword() {
        def userid=session.getAttribute('id_client')
        boolean checkPassword=editPasswordService.getPassword(userid,params.currentPassword)

        if(checkPassword){
            if(params.newPassword==params.confirmPassword) {
                editPasswordService.setPassword(userid,params.newPassword)
                session.invalidate()
                flash.message="Password changed successfully. Please log in again."
                redirect(action: 'index')
            }
            else {
                flash.message="Passwords doesn't match."
                redirect(action: 'privacy')
            }

        }
        else {
            flash.message="Incorrect Password."
            redirect(action: 'privacy')
        }
    }

    }

