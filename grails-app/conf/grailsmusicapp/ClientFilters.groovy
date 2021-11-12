package grailsmusicapp

class ClientFilters {


    def filters = {
        allExceptClient(controller: 'client', action: '*', invert: true) {
            before = {
                if (session.getAttribute('id_client')==null) {
                    redirect(controller: 'client', view: 'index')
                    return false
                }

            }

        }
    }

}