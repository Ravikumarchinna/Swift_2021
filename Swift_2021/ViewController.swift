//
//  ViewController.swift
//  Swift_2021
//
//  Created by Ravikumar on 5/19/21.
//


//............................ Generics

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
//        var SomeIntA = 20
//        var SomeIntB = 10
//        swapTwoints(a: &SomeIntA, b: &SomeIntB)
//        print("swaped Int values A---> \(SomeIntA) another value -- B\(SomeIntB)")
//
//        var someStrA = "Ravi"
//        var SomeStrB = "kumar"
//        swapTwoints(a: &someStrA, b: &SomeStrB)
//        print("swaped Int values A---> \(someStrA) another value -- B-->\(SomeStrB)")
//
//        var getStack = InStack<Int>()
//        getStack.push(10)
//        getStack.push(20)
//        getStack.push(30)
//
//        let ele =   getStack.pop()
//        print(ele)
//
//      let stackTopItem =  getStack.topItem
//
//        let strings = ["cat", "dog", "llama", "parakeet", "terrapin"]
//        if let value = findindex(ofstring: "llamaa", in: strings){
//            print(value)
//        }
    }
    
    //........................Start Generics methods
    //......... This is non-generic function
//    func swapTwoints(a: inout Int, b: inout Int) {
//        let temporary = a
//        a = b
//        b = temporary
//    }
    //........... This is Generic Type
//    func swapTwoints<T>(a : inout T, b: inout T) {
//        let temporaryA = a
//        a = b
//        b = temporaryA
//    }
//        //........................End Generics methods
//    func findindex(ofstring valueToFind:String, in array:[String]) -> Int? {
//        for (index,value) in array.enumerated() {
//            if value == valueToFind {
//                return index
//            }
//        }
//        return nil
//    }
}

//........Start This is non-generic struct
//struct InStack {
//        var items = [Int]()
//   mutating func push(_ item:Int) {
//        items.append(item)
//    }
//    mutating func pop(){
//        items.removeLast()
//    }
//}
//........End This is non-generic struct

//struct InStack<Element> {
//    var elementsArray = [Element]()
//    mutating func push(_ item:Element){
//        elementsArray.append(item)
//    }
//    mutating func pop()->Element{
//        elementsArray.removeLast()
//    }
//}
//extension InStack{
//    var topItem: Element? {
//        return elementsArray.isEmpty ? nil : elementsArray[elementsArray.count - 1]
//    }
//}


//struct Instack: Container {
//    func append(_ item: Int) {
//        <#code#>
//    }
//    var count: Int
//    subscript(i: Int) -> Int {
//        <#code#>
//    }
//    var items = [Int]()
//    typealias Item = Int
//}

protocol Container {
    
    associatedtype Item
    func append(_ item:Int)
    var count: Int{get}
    subscript(i:Int)->Item{get}
}
















































































































