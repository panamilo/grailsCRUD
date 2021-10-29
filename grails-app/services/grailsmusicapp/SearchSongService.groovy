package grailsmusicapp

import grails.transaction.Transactional
import groovy.sql.Sql

@Transactional
class SearchSongService {
    def dataSource

    def searchSong(String id,String songname,String artist) {

        Sql sql= new Sql(dataSource)
        return sql.rows(""" SELECT song.idsong,song.songname,song.album,song.genre,artist.artistname 
                                            FROM song INNER JOIN artist ON song.artist_id=artist.idartist 
                                            where isDeleted=false and 
                                            (idsong= $id or songname ILIKE '%$songname%' or artistname ILIKE '%$artist%') 
                                             order by idsong """)

    }
}
