package grailsmusicapp

import grails.transaction.Transactional
import groovy.sql.Sql

@Transactional
class DeleteSongService {
def dataSource

    def deleteSong(Integer id) {
        Sql sql= new Sql(dataSource)
        sql.executeUpdate("""UPDATE song SET isdeleted=true where idsong=$id""")
    }

    def viewDeleted(){
        Sql sql= new Sql(dataSource)
        return sql.rows("""select song.idsong,song.songname,song.album,song.genre,artist.artistname 
                                    from song INNER JOIN artist ON song.artist_id=artist.idartist 
                                    where isDeleted=true order by idsong""")
    }

    def undoDelete(Integer id){
        Sql sql=new Sql(dataSource)
        sql.executeUpdate("""UPDATE song SET isdeleted=false where idsong=$id""")
    }
}
