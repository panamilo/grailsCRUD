package grailsmusicapp

import grails.transaction.Transactional
import groovy.sql.Sql

@Transactional
class SearchSongService {
    def dataSource

    def searchSong(String id,String songname,String artist) {

        Sql sql= new Sql(dataSource)

        GString searchParams = GString.EMPTY
        if(id){
            searchParams = searchParams + """ AND idsong=$id """
        }
        if(songname){
            searchParams = searchParams + """ AND songname ILIKE '%$songname%' """
        }
        if(artist){
            searchParams = searchParams + """ AND artistname ILIKE '%$artist%' """
        }
        return sql.rows(""" SELECT song.idsong,song.songname,song.album,song.genre,artist.artistname 
                                            FROM song 
                                            INNER JOIN artist ON song.artist_id=artist.idartist 
                                            where isDeleted=false  """ +searchParams  )

    }

}
