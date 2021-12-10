package grailsmusicapp

class Song {

    String songname
    String genre
    String album
    Boolean isdeleted
    Integer id
    Artist artist
    static belongsTo = [artist: Artist]

    static constraints = {
    }
    static mapping = {
        table "song"
        version false
        isdeleted defaultValue: false
        id column: 'idsong', type: 'integer',generator: 'sequence'
    }
}
