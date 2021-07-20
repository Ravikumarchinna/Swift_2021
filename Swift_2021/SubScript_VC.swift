//
//  SubScript_VC.swift
//  Swift_2021
//
//  Created by Ravikumar on 5/23/21.
//

import UIKit

class SubScript_VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        let threetimesTable = TimeTable(multiplier: 3)
//        print("six times three is \(threetimesTable[2])")
        
        var matrix = Matrix(rows: 2, columns: 2)
        
        matrix[0,1] = 1.5
        matrix[1,0] = 3.2
        print(matrix.grid)

        
        let mars = Planet.init(rawValue: 21)
        if let mar = mars {
            print("mar value is --->\(mar)")
        }
        
        
    }
}

struct TimeTable {
    let multiplier:Int
    subscript (index:Int) ->Int{
        return multiplier*index
    }
}

struct Matrix {
    
    let rows:Int, coloumns:Int
    var grid:[Double]
    init(rows:Int,columns:Int) {
        self.rows = rows
        self.coloumns = columns
        grid = Array(repeating: 0.0, count: rows*columns)
    }
    func indexIsValid(row:Int,column:Int) -> Bool {
        
        return row >= 0 && row < rows && column >= 0 && column < coloumns
    }
    subscript(row:Int,column:Int)-> Double{
        
        get{
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[(row*coloumns) + column]
        }
        set{
            assert(indexIsValid(row: row, column: column), "Index out of range")
            grid[(row * coloumns) + column] = newValue
        }
    }
}

//.......... Type Subscripts

enum Planet:Int {
    case mercury = 1,venus,earth,mars,jupiter,saturn,uranus,neptune
    
    static subscript(n:Int) -> Planet{
        return Planet(rawValue: n)!
    }
    
}
























































