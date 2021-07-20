//
//  Optional_VC.swift
//  Swift_2021
//
//  Created by Ravikumar on 5/21/21.
//

import UIKit

class Optional_VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //.................Start Collection Types Set Operations.
        
        var letters = Set<Character>()
        letters.insert("0")
        letters = []
        var favoriteGeneres:Set<String> = ["Rock","lassical","Hip Hop"]
        print("I have \(favoriteGeneres.count) favorite music generes")
        
        if favoriteGeneres.isEmpty {
            
        }
        
        for genere in favoriteGeneres.enumerated() {
            
        }
        
        
        
        
        
        
        
        
        
        
        //...........Start Single level of access optional Value
//        let Jhon = Person()
//      //  Jhon.residence = Residence()
//        if let roomCount = Jhon.residence?.numberofRooms{
//            print("Jhons residence has \(roomCount) room(s)")
//        }
//        else{
//            print("Unable to residence the number of rooms")
//        }
        //...........End Single level of access optional Value

        
        
        
        //...........Start Multi level of access optional Value

        let someAddress = Address()
        someAddress.buildingNumber = "29"
        someAddress.street = "Acaica Road"
         
        
        let somePerson = Person()
       // somePerson.residence = Residence()
        somePerson.residence?.printNumberofRooms()
        
        let someRoom = Room.init(name: "Bathroom")
        
        
        
        //...........End Multi level of access optional Value

        
        
        
        
        
    }
}

//...........Start Single level of access optional Value

//class Person {
//    var residence:Residence?
//}
//class Residence {
//    var numberofRooms = 1
//}

//...........End Single level of access optional Value


//...........Start Multi level of access optional Value

class Person {
    var residence:Residence?
}
class Residence {
    var rooms = [Room]()
    var numberofRooms:Int {
        return rooms.count
    }
    subscript(i:Int) ->Room{
        get {
            return rooms[i]
        }
        set{
            rooms[i] = newValue
        }
    }
    
    func printNumberofRooms() {
        print("The number of rooms is --> \(numberofRooms)")
    }
    var adderss:Address?
}
class Room {
    var name:String
    init(name:String) {
        self.name = name
    }
}

class Address {
    var buildingName:String?
    var buildingNumber:String?
    var street:String?
    
    func buildingIdentifier() -> String? {
        if let buildingNumber = buildingNumber, let street = street {
            return "\(buildingNumber) \(street)"
        }else if buildingName != "" {
            return buildingName
        }
        else{
            return nil
        }
    }
}



//...........End Multi level of access optional Value















































