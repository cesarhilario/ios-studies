//
//  ViewController.swift
//  LoginPagesWithViewCode
//
//  Created by Cesar Hilario on 01/05/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    var screen: LoginScreen?
    
    override func loadView() {
        self.screen = LoginScreen();
        self.view = self.screen;
    }

    override func viewDidLoad() {
        super.viewDidLoad();
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false);
    }


}

