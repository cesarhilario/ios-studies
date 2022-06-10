import UIKit

let food: String = "churros";
let hapinnes: Int = 5;
let calories: Double = 79.5;
let isVegetable: Bool = true;

/* Implict parameter with _ (...) */
func foodConsumed(_ food: String = "Pineapple", calories: Double = 33.5) {
    print("The food consumed was: \(food). It has \(calories) calories");
}

foodConsumed(calories: calories);
foodConsumed(food, calories: calories);

/* Arrays e tipos de laços for */
let totalCalories = [50.4, 100, 300, 500];

for calories in 0..<totalCalories.count{
    print(totalCalories[calories]);
}

for calories in totalCalories{
    print(calories)
}

/* Passando arrays para funções retornos e cuidados com inferências */

func allCalories(totalCalories: Array<Double>) -> Double {
    var total: Double = 0;
    
    for calories in totalCalories {
        total += calories;
    }
    
    print("The total of calories is \(total)");
    
    return total;
}

let total = allCalories(totalCalories: totalCalories);
print(total);

/* Classes, instâncias, objetos e propriedades de nossas refeições */

class MockedMelt {
    let name: String = "Apple";
    let hapiness: String = "5";
}

let mockedMelt: MockedMelt = MockedMelt();
print(mockedMelt.name);

/* Optionals e uma primeira visão dos seus perigos */

class Melt {
    var name: String?;
    var hapiness: String?
}

let melt: Melt = Melt();

melt.name = "Watermelon";

//print(melt.name); // Optional("Watermelon")

// Forced unwrap => Avoid
print(melt.name!);

/* Optionals com interrogação e exclamação e além de um unwrapping com let */

// Avoid
if melt.name != nil {
    print(melt.name!);
}

// Best Pratices to extract optionals values

if let name = melt.name {
    print(name);
}

// guard let
func showMeltName(){
    if let name = melt.name {
        print(name);
    }
    
    guard let name = melt.name else {
        return;
    }
    
    print(name);
}

showMeltName();

/* Métodos que retornam opcionais */

let number = Int("5")

print(number ?? 0); // Optional(5)

if let n = number {
    print(n);
} else {
    print("Erro when convert String to Int")
}

/* Good Citizen e criando classes e aplicativos que nunca quebram com nulos */

class Melt2 {
    // Attributes
    var name: String;
    var happiness: String;
    var items: Array<Item> = [];
    
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

class Item {
    var name: String;
    var calories: Double;
    
    init(name: String, calories: Double) {
        self.name = name;
        self.calories = calories;
    }
}

let melt2 = Melt2(name: "Orange", happiness: "5");

let rice = Item(name: "Rice", calories: 51.0);
let bean = Item(name: "Bean", calories: 90);
let beef = Item(name: "Beef", calories: 287.0);

let lunch = Melt2(name: "Lunch", happiness: "5");
lunch.items.append(rice);
lunch.items.append(bean);
lunch.items.append(beef);

if let firstItem = lunch.items.first {
    print(firstItem.name);
}

print(lunch.totalOfCalories2());


