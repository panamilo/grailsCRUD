package grailsmusicapp

class ClientController {
    def loginService
    def registerService
    def editPasswordService

    def index() {

    }
    def login() {

        def isValid = Client.findByUsernameAndPassword(params.username,params.password)
       // def isValid=loginService.getValidate(params.username,params.password)
        if(isValid!=null){
           session.idclient=isValid
           redirect(controller: "song", action: "menu")
        }
        else{
            flash.message="Wrong username or password."
            redirect(action: 'index')
       }

    }
    def logout() {
        if(session.idclient!=null) {
            session.invalidate()
            redirect(action: 'index')
        }
    }
    def signup() {

    }
    def register() {
        def existsUser = Client.findByUsername(params.username)
        //boolean existsUser= registerService.getUsername(params.username)
        if(!existsUser){
            def c= new Client(firstname: params.first_name,lastname:params.last_name,username: params.username,password:params.password)
            c.save(flush: true)
           // registerService.saveClient(params.first_name,params.last_name,params.username,params.password)
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
        def userid=session.idclient
        def currentClient=Client.findByPassword(params.currentPassword)
        println(userid)
        //boolean checkPassword=editPasswordService.getPassword(userid,params.currentPassword)

        if(currentClient=~userid){
            if(params.newPassword==params.confirmPassword) {

             //   editPasswordService.setPassword(userid,params.newPassword)
                currentClient.password= params.newPassword
                currentClient.save(flush: true)
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

