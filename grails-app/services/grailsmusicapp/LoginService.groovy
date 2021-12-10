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
            sql.executeUpdate("""UPDATE client SET password=$newpassword where username=$username""")
        }


    def setGormStatus(String status)
    {
        Sql sql = new Sql(dataSource)
        sql.executeUpdate("""UPDATE gormvar SET isEnabled=$status where id=1""")

    }
    def getGormStatus()
    {
        Sql sql = new Sql(dataSource)
          return sql.firstRow("""select id from gormvar where isEnabled='1'""")

    }
        }

