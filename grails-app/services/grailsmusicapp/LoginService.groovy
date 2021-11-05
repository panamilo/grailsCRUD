package grailsmusicapp
import groovy.sql.Sql
import grails.transaction.Transactional

@Transactional
class LoginService {

    def dataSource

    def getValidate(String username,String password){

        Sql sql= new Sql(dataSource)
     return sql.firstRow("""select * from client where username=$username and password=$password""")

    }

    def checkPassword(String username) {

    Sql sql= new Sql(dataSource)
    return sql.firstRow("""select password from client where username=$username""")
    }
    def setPassword(String newpassword,String username) {
            Sql sql = new Sql(dataSource)
            sql.executeUpdate("""UPDATE client SET password="$newpassword where username=$username""")
        }

        }

