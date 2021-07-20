//
//  TypeCasting_VC.swift
//  Swift_2021
//
//  Created by Ravikumar on 6/16/21.
//

import UIKit
import Foundation

class TypeCasting_VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

            
        
        
        let library = [
        Movie(name: "Casa", director: "MIchael"),
        Song(name: "Blue Suede", artist: "Elvis Presly"),
        Movie(name: "Citizen kane", director: "Orson wellls"),
        Song(name: "The one and Only", artist: "Chesney Hawkes"),
        Song(name: "Never Gonna give you up", artist: "Rick Astley")
        
        ]
        
        var movieCount = 0
        var songsCount = 0
        
        for item in library {
            if item is Movie {
                movieCount += 1
            }else{
                songsCount += 1
            }
        }
        
        print("movies count ...\(movieCount) songs Count ...\(songsCount)")
        
        
        var things:[Any] = []
        
        things.append(0)
        things.append(0.0)
        things.append(42)
        things.append(3.14159)
        things.append("hello")
        things.append((3.0,5.0))
        things.append(Movie(name: "Ghostbusters", director: "Ivan Reitman"))
        things.append({(name:String) -> String in "Hello \(name)"})
        
        
//        for thing in things {
//
//            switch thing {
//            case 0 as Int:
//                print(" This is Int value")
//                break
//            case 1 as Float:
//                print(" This is Float value")
//                break
//            case 2 as Double:
//                print(" This is Int value")
//                break
//            case 3 as let String() :
//                print(" This is Int value")
//                break
//            case 4 as Int:
//                print(" This is Int value")
//                break
//
//
//
//
//            default:
//                <#code#>
//            }
//
//
//        }
        
        
    }

}

class MediaItem {
    
    var name:String
    init(name:String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director:String
    init(name:String,director:String) {
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaItem {
    var artist:String
    init(name:String,artist:String) {
        self.artist = artist
        super.init(name: name)
    }
}











































































