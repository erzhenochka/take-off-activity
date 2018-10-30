import UIKit

class Song {
    let id: Int
    let name: String
    let price: Float
    var timesPlayed: Int
 
    
    init(id: Int, name: String, price: Float, timesPlayed: Int) {
        self.id = id
        self.name = name
        self.price = price
        self.timesPlayed = timesPlayed
    }
}

class Jukebox {
    var songs = [Song.init(id: 1, name: "I love you", price: 2, timesPlayed: 10), Song.init(id: 2, name: "Will yopu love me", price: 4, timesPlayed: 5), Song.init(id: 3, name: "I hate you", price: 1.99, timesPlayed: 20), Song.init(id: 4, name: "Will you hate me", price: 2.99, timesPlayed: 15), Song.init(id: 5, name: "Amore mio", price: 3.99, timesPlayed: 45), Song.init(id: 6, name: "Simone", price: 0.99, timesPlayed: 18)]
    
    func printList() {
        for song in songs {
            print("\(song.id) \(song.name)")
        }
    }

    func printPrice(songNumber: Int) {
        let song = songs[songNumber-1]
        print("\(song.name) Price: \(song.price)")
    }
    func printTop5 () {
        print("\n\n\nTOP 5 LIST:")
        var copyOfSongsArray = songs.sorted(by: { $0.timesPlayed > $1.timesPlayed } )
        for element in 0...4 {
            let song = copyOfSongsArray[element]
            print("\(element+1): \(song.name) Times played: \(song.timesPlayed)")
        }
        print("*************")
    }
    func playSong(songNumber: Int) {
        let songName : String = songs[songNumber-1].name
        print("Song is playing: \(songName)")
        songs[songNumber-1].timesPlayed += 1
    }
    
    func playSong(_ song: Song) {
        let songName : String = song.name
        print("Song is playing: \(songName)")
        songs[song.id-1].timesPlayed+=1
    }

}

var j1 = Jukebox()
j1.printList()
j1.printPrice(songNumber: 2)
j1.printTop5()
//j1.playSong(songNumber: 1)
j1.playSong(j1.songs[2])
j1.printTop5()
