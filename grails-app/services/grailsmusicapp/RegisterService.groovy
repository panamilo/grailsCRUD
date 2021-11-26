package grailsmusicapp
import groovy.sql.Sql
import grails.transaction.Transactional

@Transactional
class RegisterService {

    def dataSource

    def getUsername(String username){
        Sql sql=new Sql(dataSource)

        return sql.firstRow("""select * from client where username=$username""")
    }

    def saveClient(String firstname,String lastname,String username,String password){
        Sql sql= new Sql(dataSource)

            sql.execute("""insert into client(firstname,lastname,username,password) 
                                  values ($firstname,$lastname,$username,$password) """)

    }
}
