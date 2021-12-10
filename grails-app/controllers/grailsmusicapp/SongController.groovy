package grailsmusicapp

import grails.converters.JSON

class SongController {
    def createSongService
    def viewSongService
    def editSongService
    def deleteSongService

    def menu (boolean gormStatus) {
     gormStatus =  viewSongService.getGormStatus()
        [gormStatus:gormStatus]

    }
    def songList(boolean gormStatus) {

        if(gormStatus) {
            def songlist = Song.executeQuery("select id,songname,artist.artistname from Song where isdeleted=false") as JSON
            render songlist
        }
        else {
            def songlist = viewSongService.getSonglist() as JSON
            render songlist
        }

    }
    def create (boolean gormStatus) {
        if(gormStatus){
            def  artistList=Artist.getAll()
            [artistList: artistList,gormStatus: gormStatus]

        }
        else {
            def artistList = createSongService.getArtist()
            [artistList: artistList,gormStatus: gormStatus]

        }


    }

    def createSong () {
        boolean gormStatus= viewSongService.getGormStatus()
            if(gormStatus) {
                def songExists = Song.findBySongname(params.songname)
                if (!songExists) {
                    try {
                        def artist = Artist.findByArtistname(params.songartist)
                        def s = new Song(songname: params.songname, album: params.songalbum, genre: params.songgenre, artist: artist.id, isdeleted: false)
                        s.save(flush: true)
                        flash.message = "Song successfully added."
                        redirect(action: "menu",params:[gormStatus:gormStatus])
                    } catch (Exception ex) {
                        println(ex)
                        flash.message = "Please select one of the artists on the list."
                        redirect(action: "create",params:[gormStatus:gormStatus])
                    }

                } else {
                    flash.message = " The song already exists. Please try again with a new one! "
                    redirect(action: "create",params:[gormStatus:gormStatus] )
                }
            }
        else {
                boolean songExists = createSongService.getSongname(params.name)
                if (!songExists) {
                    try {
                        createSongService.addSong(params.name, params.album, params.genre, params.artist)
                        flash.message = "Song successfully added."
                        redirect(action: "menu",params:[gormStatus:gormStatus])
                    } catch (Exception ex) {
                        println(ex)
                        flash.message = "Please select one of the artists on the list."
                        redirect(action: "create",params:[gormStatus:gormStatus])
                    }

                } else {
                    flash.message = " The song already exists. Please try again with a new one! "
                    redirect(action: "create",params:[gormStatus:gormStatus])
                }
            }
        }


    def details(Integer id) {
        boolean gormStatus= viewSongService.getGormStatus()
        if(gormStatus) {
            def song = Song.findById(id)
            [song: song,gormStatus: gormStatus]

        }
        else {
            def song = viewSongService.getDetails(id)
            [song: song,gormStatus: gormStatus]
        }

    }


    def edit(Integer id)  {
        boolean gormStatus= viewSongService.getGormStatus()
        if(gormStatus) {
            def song = Song.findById(id)
            def artistList = Artist.getAll()
            [song: song, artistList: artistList,gormStatus: gormStatus]
        }
        else{
            def song=viewSongService.getDetails(id)
            def artistList = createSongService.getArtist()
            [song: song, artistList: artistList,gormStatus: gormStatus]
        }
    }
    def editSong(Integer id) {
       boolean gormStatus = viewSongService.getGormStatus()

            if (gormStatus) {
                def songExists=Song.findBySongname(params.songname)
                if(!songExists) {
                    try {

                        def artist = Artist.findByArtistname(params.songartist)
                        Song.executeUpdate("""Update Song 
                                        set songname='$params.songname',album='$params.songalbum',genre='$params.songgenre', 
                                        artist_id=$artist.id 
                                        where id=$id""")
                        flash.message = "Song successfully edited."
                        redirect(action: "menu")


                    } catch (Exception ex) {

                        flash.message = "Something went wrong. Please try again"
                        redirect(action: "edit",params: [id:id])
                    }
                }
                else{
                    flash.message = " The song already exists. Please try again with a new one! "
                    redirect(action: "edit",params: [id:id])
                }
            }



        else {
                def songExists = createSongService.getSongname(params.name)
                if (!songExists) {
                    try {
                        println(params.name)
                        editSongService.editSong(id, params.name, params.album, params.genre, params.artist)
                        flash.message = "Song successfully edited."
                        redirect(action: "menu")
                    }
                    catch (Exception ex) {
                        println(ex)
                        flash.message = "Something went wrong. Please try again"
                        redirect(action: "edit")
                    }
                }
                else {
                    flash.message = " The song already exists. Please try again with a new one! "
                    redirect(action: "edit",params: [id:id])
                }
            }
    }

    def delete(Integer id){
        boolean gormStatus=viewSongService.getGormStatus()
        if(gormStatus) {

            Song.executeUpdate("""Update Song set isdeleted=true where id=$id""")
            flash.message = "Song was successfully removed."
            redirect(action: "menu")

        }
        else{
            deleteSongService.deleteSong(id)
            flash.message = "Song was successfully removed."
            redirect(action: "menu")
        }
    }
    def undodelete(Integer id,boolean gormStatus){
        if(gormStatus) {

            Song.executeUpdate("""Update Song set isdeleted=false where id=$id""")
            flash.message = "Song was successfully recovered."
            redirect(action: "menu")
        }
        else{
             deleteSongService.undoDelete(id)
            flash.message = "Song was successfully recovered."
             redirect(action: "menu")
        }
    }

    def deletedsongs(boolean gormStatus) {
      gormStatus=viewSongService.getGormStatus()
        [gormStatus:gormStatus]
    }

    def deletedList(boolean gormStatus) {
        if(gormStatus) {
            def deletedList = Song.executeQuery("select id,songname,artist.artistname from Song where isdeleted=true") as JSON
            render deletedList
        }
        else{
             def deletedList = deleteSongService.viewDeleted() as JSON
            render deletedList
        }
    }

}