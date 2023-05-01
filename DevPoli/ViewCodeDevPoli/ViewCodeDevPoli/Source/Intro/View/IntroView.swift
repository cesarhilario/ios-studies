//
//  IntroView.swift
//  ViewCodeDevPoli
//
//  Created by Cesar Hilario on 01/05/23.
//

import UIKit;

class IntroView: UIView {
    // Só sera iniciado ao ser chamado
    private lazy var helloLabel: UILabel = {
        let label = UILabel();
        label.text = "Hello World";
        label.font = UIFont.systemFont(ofSize: 22);
        label.textColor = UIColor.black;
        label.translatesAutoresizingMaskIntoConstraints = false;
        return label;
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel();
        label.text = "César Hilário";
        label.font = UIFont.systemFont(ofSize: 16);
        label.textColor = UIColor.darkGray;
        label.translatesAutoresizingMaskIntoConstraints = false;
        return label;
    }()
    
    init() {
        super.init(frame: .zero);
        backgroundColor = .white;
        addSubViews();
        constraintHelloLabel();
        constraintNameLabel();
    }
    
    required init?(coder: NSCoder) {
        fatalError();
    }
    
    private func addSubViews() {
        self.addSubview(helloLabel);
        self.addSubview(nameLabel)
    }
    
    
    private func constraintHelloLabel() {
        let constraint = [
            helloLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            helloLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ];
        
        constraint.forEach { (item) in
            item.isActive = true;
        }
        
    }
    
    private func constraintNameLabel() {
        let constraint = [
            nameLabel.topAnchor.constraint(equalTo: helloLabel.bottomAnchor, constant: 12),
            nameLabel.centerXAnchor.constraint(equalTo: helloLabel.centerXAnchor)
        ]
        
        constraint.forEach { (item) in
            item.isActive = true;
        }
    }
    
}
