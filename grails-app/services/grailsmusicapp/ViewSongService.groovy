package grailsmusicapp
import groovy.sql.Sql
import grails.transaction.Transactional

@Transactional
class ViewSongService {

    def dataSource

    def getSonglist() {
        Sql sql=new Sql(dataSource)
        return sql.rows("""select song.idsong,song.songname,song.album,song.genre,artist.artistname 
                                    from song INNER JOIN artist ON song.artist_id=artist.idartist 
                                    where isdeleted=false order by idsong""")
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