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
    
    var viewModel: CustomCellViewModel?
    
    override func awakeFromNib() {
        super.awakeFromNib();
        self.imageUserImageView.clipsToBounds = true;
        self.imageUserImageView.layer.cornerRadius =  self.imageUserImageView.frame.height / 2
    }
    
    func setupCell(user: User) {
        self.viewModel = CustomCellViewModel(data: user);
        
        self.imageUserImageView.image = self.viewModel?.getUserImage
        self.nameLabel.text = self.viewModel?.getName
        self.professionLabel.text = self.viewModel?.getProfession
        self.salaryLabel.text = self.viewModel?.getSalary
        self.ageLabel.text = self.viewModel?.getAge
        
        if (self.viewModel?.getIsEnabledHeart ?? false) {
            self.heartButton.tintColor = .red;
        } else {
            self.heartButton.tintColor = .blue
        }
    }
    
    @IBAction func tappedHeartButton(_ sender: Any) {
        self.heartButton.tintColor = .red;
    }
}
