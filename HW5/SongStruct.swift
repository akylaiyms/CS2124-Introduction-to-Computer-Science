struct Song {
    let title: String
    let artist: String
    let duration: Int
    var rating: Int
    private var playCount : Int = 0
    
    init(title: String, artist: String, duration:Int, rating: Int = 0) {
        self.title = title
        self.artist = artist
        self.duration = duration
        self.rating = rating
    }
    
    mutating func play() {
        playCount += 1
    }
    
    func printStats() {
        print("\(title) by \(artist) has been played \(playCount) time(s), was rated \(rating) stars, and is \(duration) seconds long.")
    }
}


var myFavoriteJive = Song(title: "Feel it Still",
                          artist: "Portugal the Man",
                          duration: 127, rating: 5)

print("Have you danced to \(myFavoriteJive.title) yet?")
for _ in 0..<28 {
    myFavoriteJive.play()
}
myFavoriteJive.printStats()
