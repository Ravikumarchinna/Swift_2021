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
        
        
        //...Extensions Practice
        
//        let oneInch = 2.00.mm
//        print("One inch is \(oneInch) meters")
//
//        let threeft = 3.0.ft
//        print("Three feet is \(threeft) meters")
//
//        let defaultRect = Rect()
//        let memberwiseRect = Rect(origin: Point(x: 2.0, y: 2.0), size: Size(width: 5.0, height: 5.0))
        
//        3.repetition {
//            print("Hello")
//        }

//      var sqvalue = 3
//      let val =  sqvalue.square()
        
        var kindval = 1.Kind
        
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

struct Size {
    var width = 0.0, height = 0.0
}

struct Point {
    var x = 0.0, y = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
}

extension Rect{
    init(center:Point,size:Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin:Point(x: originX, y: originY), size:size)
    }
}

//extension Int {
//    func repetition(task:()  -> Void) {
//        for _ in 0..<self {
//            task()
//        }
//    }
//}

//extension Int {
//    mutating func square() {
//        self = self * self
//    }
//}


extension Int {
    
    enum Kind {
        case negetive,zero,positive
    }
    
    var Kind: Kind {
        
        switch self {
        case 0:
            return .zero
            
        case let x where x > 0 :
            return .positive
            
        default:
            return .negetive
        }
    }
    
    
    
}



extension Double{
    
    var km:Double { return self*1_000.0}
    var m:Double {return self}
    var cm:Double { return self / 100.0}
    var mm:Double{ return self / 1_000.0}
    var ft:Double { return self / 3.28084}
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
















































































































