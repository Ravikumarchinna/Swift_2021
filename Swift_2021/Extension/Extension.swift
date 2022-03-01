//
//  Extension.swift
//  Swift_2021
//
//  Created by Ravikumar on 28/02/22.
//

import Foundation


//...Extensions

//...DEF:: Extensins add new functionality to an existing class , structure , enumeratin or pprotocol type
//... Extensions are similar to categories in Objective -c

extension Double{
    
    var km:Double { return self*1_000.0}
    var m:Double {return self}
    var cm:Double { return self / 100.0}
    var mm:Double {return self / 1_000.0}
    var ft:Double { return self / 3.28084}
}































































































