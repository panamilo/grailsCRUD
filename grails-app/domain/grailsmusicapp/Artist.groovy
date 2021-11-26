package grailsmusicapp

class Artist {
    String artistname
    String artistsurname
    Integer age
    Date dateofbirth
    Integer id
    static hasMany = [songs: Song]

    static constraints = {
    }
    static mapping = {
        table "artist"
        version false
        id column: 'idartist', type: 'integer'

    }
}
