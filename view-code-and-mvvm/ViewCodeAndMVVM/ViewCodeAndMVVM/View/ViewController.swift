//
//  ViewController.swift
//  ViewCodeAndMVVM
//
//  Created by Cesar Hilario on 29/04/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!;
    
    let viewModel: ViewModel = ViewModel();

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
        self.tableView.separatorStyle = .none;
        self.tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomTableViewCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as? CustomTableViewCell
        cell?.setupCell(user: self.viewModel.loadCurrentUser(indexPath: indexPath))
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tablView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print(self.viewModel.getName(indexPath: indexPath));
    }
}
