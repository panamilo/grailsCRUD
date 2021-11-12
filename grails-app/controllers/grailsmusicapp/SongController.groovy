package grailsmusicapp

import grails.converters.JSON

class SongController {

    def createSongService
    def viewSongService
    def editSongService
    def deleteSongService
    def searchSongService

    def menu () {

    }
    def songList() {
        def songlist = viewSongService.getSonglist()
        render songlist as JSON
    }
    def create () {

            def artistList = createSongService.getArtist()
            [artistList: artistList]

    }

    def createSong () {
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
            deleteSongService.deleteSong(id)
            redirect(action: "menu")


    }
    def undodelete(Integer id){
            deleteSongService.undoDelete(id)
            redirect(action: "menu")

    }
    def search() {

            def searchResult = searchSongService.searchSong(params.searchid,params.searchsongname,params.searchartist)
            [searchResult: searchResult]
    }

    def details(Integer id) {

            def song = viewSongService.getDetails(id)
            [song: song]

    }

    def deletedsongs() {

            def deletedList = deleteSongService.viewDeleted()
            [deletedList:deletedList]

    }

}