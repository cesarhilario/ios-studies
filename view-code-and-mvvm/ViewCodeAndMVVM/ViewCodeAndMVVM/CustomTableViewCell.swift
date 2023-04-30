//
//  CustomTableViewCell.swift
//  ViewCodeAndMVVM
//
//  Created by Cesar Hilario on 30/04/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var imageUserImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var professionLabel: UILabel!
    
    @IBOutlet weak var salaryLabel: UILabel!
    
    
    @IBOutlet weak var heartButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib();
        self.imageUserImageView.clipsToBounds = true;
        self.imageUserImageView.layer.cornerRadius =  self.imageUserImageView.frame.height / 2
    }
    
    func setupCell(setup: Person) {
        self.imageUserImageView.image = setup.imageUser;
        self.nameLabel.text = "Nome: \(setup.name)";
        self.professionLabel.text = "Profissão: \(setup.profession)";
        self.salaryLabel.text = "Salário: \(setup.salary)"
        self.ageLabel.text = "Idade: \(setup.age)"
        
        if (setup.isEnabledHeart) {
            self.heartButton.tintColor = .red;
        } else {
            self.heartButton.tintColor = .blue
        }
    }
    
    @IBAction func tappedHeartButton(_ sender: Any) {
        self.heartButton.tintColor = .red;
    }
}
