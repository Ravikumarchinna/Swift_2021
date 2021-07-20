//
//  Deinit_VC.swift
//  Swift_2021
//
//  Created by Ravikumar on 6/11/21.
//

import UIKit

class Deinit_VC: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        let name: String? = nil
        let unwrappedName = name ?? "Anonymous"
        print("Hello, \(name ?? "Anonymous")!")
        
        
        
        var playerOne:Player? = Player(coins: 100)
        print("A new player has joined the game with \(String(describing: playerOne?.coinsInPurse))")
        print("There are now \(Bank.coinInBank) coins left in the bank")
        
        playerOne?.win(coins: 4000)
        print("PlayerOne won 2000 coins & now has \(playerOne?.coinsInPurse) coins")
        print("The bank now only has \(Bank.coinInBank)")
        
        
        
        
    }


}
//..............Start Deinitilizers

class Bank {
    static var coinInBank = 10_000
    static func distribute(coins numberofCoinsRequested: Int) -> Int{
        let numberofcoinsToVend = min(numberofCoinsRequested, coinInBank)
        coinInBank -= numberofcoinsToVend
        return numberofcoinsToVend
    }
    static func receive(coins:Int){
        coinInBank += coins
    }
}
class Player {
    var coinsInPurse:Int
    init(coins:Int) {
        coinsInPurse = Bank.distribute(coins: coins)
    }
    func win(coins:Int) {
        coinsInPurse += Bank.distribute(coins: coins)
    }
    deinit {
        Bank.receive(coins: coinsInPurse)
        print("deinit called")
    }
}
//..............End Deinitilizers
