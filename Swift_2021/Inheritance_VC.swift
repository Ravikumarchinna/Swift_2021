//
//  Inheritance_VC.swift
//  Swift_2021
//
//  Created by Ravikumar on 5/24/21.
//

import UIKit

class Inheritance_VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let someVehicle = Vehicle()
        print("Vechicle : \(someVehicle.desciption)")
        let auomatic = Automatic()
        auomatic.currentSpeed = 35.0
        print("Automatic Car : \(auomatic.desciption)")
        
        
        //............... Deinitilizer
        
        var playerOne:Player? = Player(coins: 100)
        print("A new player has joined the game with \(String(describing: playerOne?.coinsInPurse))")
        print("There are now \(Bank.coinInBank) coins left in the bank")
        
        playerOne?.win(coins: 2000)
        print("PlayerOne won 2000 coins & now has \(playerOne?.coinsInPurse) coins")
        print("The bank now only has \(Bank.coinInBank)")
        
        
        
    }
}

 class Vehicle {
    var currentSpeed = 0.0
     var vechicleNumber = 1234
    var desciption:String {
        return "traveeling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
    }
}

class Car: Vehicle {
    var gear = 1
    override var desciption: String{
        return super.desciption + "in gear \(gear)"
    }
}
class Automatic: Car {
    
    override var currentSpeed: Double{
        didSet{
            gear = Int(currentSpeed / 10.0) + 1
        }
        
    }
}


////..............Start Deinitilizers
//
//class Bank {
//    static var coinInBank = 10_000
//    static func distribute(coins numberofCoinsRequested: Int) -> Int{
//        let numberofcoinsToVend = min(numberofCoinsRequested, coinInBank)
//        coinInBank -= numberofcoinsToVend
//        return numberofcoinsToVend
//    }
//    static func receive(coins:Int){
//        coinInBank += coins
//    }
//}
//class Player {
//    var coinsInPurse:Int
//    init(coins:Int) {
//        coinsInPurse = Bank.distribute(coins: coins)
//    }
//    func win(coins:Int) {
//        coinsInPurse += Bank.distribute(coins: coins)
//    }
//    deinit {
//        Bank.receive(coins: coinsInPurse)
//        print("deinit called")
//    }
//}
////..............End Deinitilizers












































