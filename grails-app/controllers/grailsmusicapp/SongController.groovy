package grailsmusicapp

class SongController {

    def createSongService
    def viewSongService
    def editSongService
    def deleteSongService
    def searchSongService

    def menu = {
        if(session.isActive) {
            def songList = viewSongService.getSonglist()
            [songList: songList]
        }
        else
        {
            redirect(controller: "client",action: "index")
        }
    }
    def create () {
        if(session.isActive) {
            def artistList = createSongService.getArtist()
            [artistList: artistList]
        }
        else {
            redirect(controller: "client",action: "index")
        }
    }

    def createSong () {
        if(session.isActive) {
            boolean songExists = createSongService.getSongname(params.songname)
            if (!songExists) {
                try {
                    createSongService.addSong(params.songname, params.songalbum, params.songgenre, params.songartist)
                    redirect(action: "menu")
                } catch (Exception ex) {
                    flash.message = "Please select one of the artists on the list."
                    redirect(action: "create")
                }

            } else {
                flash.message = " The song already exists. Please try again with a new one! "
                redirect(action: "create")
            }
        }
        else {
            redirect(controller: "client",action: "index")
        }

    }
    def edit(Integer id)  {
        def song=viewSongService.getDetails(id)
        def artistList = createSongService.getArtist()
        [song:song,artistList: artistList]

    }
    def editSong(Integer id) {
        try{
            editSongService.editSong(id,params.songname,params.songalbum,params.songgenre,params.songartist)
            redirect(action: "menu")

        }catch(Exception ex)
        {
            flash.message="Something went wrong. Please try again"
            redirect(action: "edit")
        }
    }

    def delete(Integer id){
        if(session.isActive) {
            deleteSongService.deleteSong(id)
            redirect(action: "menu")
        }
        else {
            redirect(controller: "client",action: "index")
        }
    }
    def undodelete(Integer id){
        if(session.isActive) {
            deleteSongService.undoDelete(id)
            redirect(action: "menu")
        }
        else {
            redirect(controller: "client",action: "index")
        }
    }
    def search() {
        if(session.isActive) {
            def searchResult = searchSongService.searchSong(params.searchid,params.searchsongname,params.searchartist)
            [searchResult: searchResult]
        }
        else {
            redirect(controller: "client",action: "index")
        }
    }

    def details(Integer id) {
        if (session.isActive) {
            def song = viewSongService.getDetails(id)
            [song: song]
        } else {
            redirect(controller: "client", action: "index")
        }
    }

    def deletedsongs() {
        if (session.isActive) {
            def deletedList = deleteSongService.viewDeleted()
            [deletedList:deletedList]
        } else {
            redirect(controller: "client", action: "index")
        }
    }

}