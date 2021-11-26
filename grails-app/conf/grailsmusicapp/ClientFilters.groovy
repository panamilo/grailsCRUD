package grailsmusicapp

class ClientFilters {


    def filters = {
        allExceptClient(controller: 'client', action: '*', invert: true) {
            before = {
                if (session.idclient==null) {
                    redirect(controller: 'client', view: 'index')
                    return false
                }

            }

        }
    }

}