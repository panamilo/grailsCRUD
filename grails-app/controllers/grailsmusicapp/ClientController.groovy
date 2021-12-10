package grailsmusicapp

class ClientController {



    def loginService
    def registerService
    def editPasswordService

    def index() {

    }

    def login() {
       loginService.setGormStatus(params.isGorm)
        boolean gormStatus=loginService.getGormStatus()
        if(gormStatus) {
            def isValid = Client.findByUsernameAndPassword(params.username, params.password)
            if (isValid) {
                session.idclient = isValid.id
                redirect(controller: "song", action: "menu",params:[gormStatus:gormStatus])
            } else {
                flash.message = "Wrong username or password."
                redirect(action: 'index')
            }
        }
        else {
            def isValid=loginService.getValidate(params.username,params.password)
            if (isValid != null) {
                session.idclient = isValid.id_client
                redirect(controller: "song", action: "menu",params:[gormStatus:gormStatus])
            } else {
                flash.message = "Wrong username or password."
                redirect(action: 'index')
            }
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
        def gormStatus=loginService.getGormStatus()
        if(gormStatus) {
            def existsUser = Client.findByUsername(params.username)
            if (!existsUser) {
                def c = new Client(firstname: params.first_name, lastname: params.last_name, username: params.username, password: params.password)
                c.save(flush: true)
                flash.message = "Account successfully created. You can now login."
                redirect(action: 'index')
            } else {
                flash.message = "Username unavailable."
                redirect(action: 'signup')
            }
        }
        else {
            boolean existsUser = registerService.getUsername(params.username)
            if (!existsUser) {
                 registerService.saveClient(params.first_name,params.last_name,params.username,params.password)
                flash.message = "Account successfully created. You can now login."
                redirect(action: 'index')
            } else {
                flash.message = "Username unavailable."
                redirect(action: 'signup')
            }
        }
    }
    def privacy() {
        def gormStatus=loginService.getGormStatus()
        [gormStatus: gormStatus]
    }

    def editPassword() {
        def gormStatus=loginService.getGormStatus()
        if (gormStatus) {
            def userid = session.idclient
            def currentClient = Client.findByPasswordAndId(params.currentPassword,userid)
            if (currentClient) {
                if (params.newPassword == params.confirmPassword) {
                    currentClient.password = params.newPassword
                    currentClient.save(flush: true)
                    flash.message = "Password changed successfully."
                    redirect(controller: 'song', action: 'menu')
                } else {
                    flash.message = "Passwords doesn't match."
                    redirect(action: 'privacy')
                }

            } else {
                flash.message = "Incorrect Password."
                redirect(action: 'privacy')
            }
        }
        else{
            def userid = session.idclient
            boolean checkPassword=editPasswordService.getPassword(userid,params.currentPassword)

            if (checkPassword) {
                if (params.newPassword == params.confirmPassword) {

                    editPasswordService.setPassword(userid,params.newPassword)
                    session.invalidate()
                    flash.message = "Password changed successfully. Please log in again."
                    redirect(action: 'index')
                } else {
                    flash.message = "Passwords doesn't match."
                    redirect(action: 'privacy')
                }

            } else {
                flash.message = "Incorrect Password."
                redirect(action: 'privacy')
            }
        }
    }
    }

