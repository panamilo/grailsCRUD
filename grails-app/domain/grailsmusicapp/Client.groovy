package grailsmusicapp

class Client {

    String username
    String password
    String firstname
    String lastname
    Integer id


    static mapping = {
        version false
        id column: 'id_Client', type: 'integer' ,generator: 'hilo'
    }
}