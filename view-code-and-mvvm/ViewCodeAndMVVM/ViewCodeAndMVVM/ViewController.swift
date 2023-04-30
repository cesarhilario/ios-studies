//
//  ViewController.swift
//  ViewCodeAndMVVM
//
//  Created by Cesar Hilario on 29/04/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!;
    
    var listUser: [Person] = [];

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self;
        self.tableView.dataSource = self;
        self.tableView.separatorStyle = .none;
        self.tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomTableViewCell")
        self.configArrayUser()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12;
    }
    

    func configArrayUser() {
        self.listUser.append(Person(name: "Caio", age: 30, profession: "Develper IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnabledHeart: true));
        self.listUser.append(Person(name: "Fabricio", age: 30, profession: "Develper IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnabledHeart: true));
        self.listUser.append(Person(name: "Alencar", age: 30, profession: "Develper IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnabledHeart: true));
        self.listUser.append(Person(name: "Jorge", age: 30, profession: "Develper IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnabledHeart: true));
        self.listUser.append(Person(name: "Robson", age: 30, profession: "Develper IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnabledHeart: true));
        self.listUser.append(Person(name: "Fabricio", age: 30, profession: "Develper IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnabledHeart: true));
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustopmTableViewCell") as? CustomTableViewCell
        cell?.setupCell(setup: self.listUser[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tablView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(self.listUser[indexPath.row].name);
    }
}

struct Person {
    var name: String;
    var age: Int;
    var profession: String;
    var salary: String;
    var imageUser: UIImage;
    var isEnabledHeart: Bool
}
