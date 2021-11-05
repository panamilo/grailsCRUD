package grailsmusicapp
import groovy.sql.Sql
import grails.transaction.Transactional

@Transactional
class ViewSongService {

    def dataSource

    def getSonglist() {
        Sql sql=new Sql(dataSource)
        def result= sql.rows("""select song.idsong,song.songname,song.album,song.genre,artist.artistname 
                                    from song INNER JOIN artist ON song.artist_id=artist.idartist 
                                    where isDeleted=false order by idsong""")
        return result
    }

    def getDetails(Integer id) {
        Sql sql= new Sql(dataSource)
        def details = sql.rows("""select song.idsong,song.songname,song.album,song.genre,artist.artistname 
                                         from song 
                                         INNER JOIN artist ON song.artist_id=artist.idartist 
                                         where song.idsong=$id""")
        return details
    }


}