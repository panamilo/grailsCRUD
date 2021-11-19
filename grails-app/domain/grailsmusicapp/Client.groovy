package grailsmusicapp

class Client {

    String username
    String password
    String firstname
    String lastname

    static mapping = {
        table "client"
        version false
        id column: 'id_Client', type: 'integer'
    }
}