package grailsmusicapp
import  groovy.sql.Sql
import grails.transaction.Transactional

@Transactional
class EditSongService {

    def dataSource

    def editSong(Integer id,String songname,String album,String genre,String artist) {

        Sql sql= new Sql(dataSource)
        sql.executeUpdate("""UPDATE song SET songname=$songname,album=$album,genre=$genre,
                                    artist_id=(select idartist from artist where artistname=$artist) 
                                    WHERE idsong=$id""")

    }
}
