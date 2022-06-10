//
//  Item.swift
//  eggplant-brownie
//
//  Created by Cesar Hilario on 16/04/22.
//

import UIKit

class Item: NSObject {
    var name: String;
    var calories: Double;

    init(name: String, calories: Double) {
        self.name = name;
        self.calories = calories;
    }
}
