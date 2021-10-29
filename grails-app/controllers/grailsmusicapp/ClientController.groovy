package grailsmusicapp

class ClientController {
    def loginService
    def registerService

    def index() {

    }
    def login() {


        boolean isValid=loginService.getValidate(params.username,params.password)
        if(isValid){
            session.isActive=true
            redirect(controller: "song", action: "menu")
        }
        else{
            flash.message="Wrong username or password."
            redirect(action: 'index')
        }

    }
    def logout() {
        if(session.isActive) {
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
    }

