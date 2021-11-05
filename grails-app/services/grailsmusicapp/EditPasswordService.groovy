package grailsmusicapp

import grails.transaction.Transactional
import groovy.sql.Sql

@Transactional
class EditPasswordService {

    def dataSource
    def getPassword(Integer id,String password) {
        Sql sql= new Sql(dataSource)
        return sql.firstRow("""select * from client where id_client=$id and password=$password""")

    }
    def setPassword(Integer id,String password) {
        Sql sql= new Sql(dataSource)
        sql.executeUpdate("""UPDATE client SET password=$password where id_client=$id""")
    }
}
