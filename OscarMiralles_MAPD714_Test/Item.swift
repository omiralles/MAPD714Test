//
//  Item.swift
//  OscarMiralles_MAPD714_Test
//
//  Created by Oscar Miralles on 2022-10-27.
//

import UIKit

//Class to store item data. Every new imte have a new id
//Other fields created to be used in the future
class Item: NSObject {
    var uuid: String = NSUUID().uuidString
    var name: String = ""
    var itemDescription: String = ""
    var quantity: Int = 0
    var priority = false
    
    init(name: String, quantity: Int) {
        super.init()
         
        self.name = name
        self.quantity = quantity
        
    }
}
