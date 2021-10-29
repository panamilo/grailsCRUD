package grailsmusicapp

import grails.transaction.Transactional
import groovy.sql.Sql

@Transactional
class CreateSongService {

    def dataSource

    def getSongname(String songname) {
        Sql sql=new Sql(dataSource)

        return sql.firstRow("""select * from song where songname=$songname""")
    }
    def getArtist(){
        Sql sql=new Sql(dataSource)
        def result = sql.rows("""SELECT artistname FROM artist""")
        return result

    }
    def addSong(String songname,String album,String genre,String artist){
        Sql sql= new Sql(dataSource)
        def artistid= sql.firstRow("""select * from artist where artistname=$artist""")
        sql.executeInsert("""insert into song(songname,album,genre,artist_id) values ('$songname','$album','$genre',$artistid.idartist) """)

    }
}

