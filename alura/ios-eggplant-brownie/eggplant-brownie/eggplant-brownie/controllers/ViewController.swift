//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Cesar Hilario on 29/03/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameTextField: UITextField?;
    
    @IBOutlet  var happinessTextField: UITextField?;
    
    @IBOutlet var statusLabel: UILabel!;
    
    private var happiness: String = "normal";
    
    override func viewDidLoad() {
        super.viewDidLoad();
        

        happinessTextField?.delegate = self;
        
    }
    
    func makeHapiness(_ happinessCode: Int) -> Void {
        switch (happinessCode) {
        case 1:
            self.happiness = "muito triste";
            break;
        case 2:
            self.happiness = "triste";
            break;
        case 4:
            self.happiness = "feliz";
            break;
        case 5:
            self.happiness = "muito feliz";
            break;
        default:
            self.happiness = "normal";
        }
    }
    
    @IBAction func Add() -> Void{
        let name: String = String(nameTextField?.text ?? "");
        self.makeHapiness(Int(happinessTextField?.text ?? "3") ?? 3);
       
//        guard let name = nameTextField?.text else {
//            return
//        }
//
//        guard let happiness = happinessTextField?.text else {
//            return
//        }
        
        print("Comi \(name) e fiquei com felicidade \(happiness)");
    
        self.statusLabel.text = "Comi \(name) e fiquei \(happiness)";
        self.statusLabel.sizeToFit();
        self.statusLabel.center.x = self.view.center.x;
        self.viewDidLoad();
        
        let melt = Melt(name: name, happiness: happiness);
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let allowedCharacters = CharacterSet.decimalDigits;
        let characterSet = CharacterSet(charactersIn: string);
        return allowedCharacters.isSuperset(of: characterSet);
    }
}

