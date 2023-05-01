//
//  IntroViewController.swift
//  ViewCodeDevPoli
//
//  Created by Cesar Hilario on 30/04/23.
//

import  UIKit

final class IntroViewController: UIViewController {
    
    private var customView: IntroView? = nil;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        buildView();
    }
    
    private func buildView() {
        view = IntroView();
        customView = view as? IntroView;
    }
    
}
