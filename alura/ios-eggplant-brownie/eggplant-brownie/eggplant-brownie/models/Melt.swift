//
//  Melt.swift
//  eggplant-brownie
//
//  Created by Cesar Hilario on 16/04/22.
//

import UIKit

class Melt: NSObject {
    // Attributes
    let name: String;
    let happiness: String;
    let items: Array<Item> = [];

    // Constructor
    init(name: String, happiness: String) {
        self.name = name;
        self.happiness = happiness;
    }

    func totalOfCalories2() -> Double {
        var total: Double = 0.0;
        
        for item in items {
            total += item.calories;
        }
        
        return total;
    }
}
