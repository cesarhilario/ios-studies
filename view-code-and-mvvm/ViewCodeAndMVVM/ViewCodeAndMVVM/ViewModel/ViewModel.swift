//
//  ViewModel.swift
//  ViewCodeAndMVVM
//
//  Created by Cesar Hilario on 30/04/23.
//

import UIKit

class ViewModel {
    private var listUser: [Person] = [];
    
    init() {
        self.configArrayUser()
    }
    
    private func configArrayUser() {
        self.listUser.append(Person(name: "Caio", age: 30, profession: "Develper IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnabledHeart: true));
        self.listUser.append(Person(name: "Fabricio", age: 30, profession: "Develper IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnabledHeart: true));
        self.listUser.append(Person(name: "Alencar", age: 30, profession: "Develper IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnabledHeart: true));
        self.listUser.append(Person(name: "Jorge", age: 30, profession: "Develper IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnabledHeart: true));
        self.listUser.append(Person(name: "Robson", age: 30, profession: "Develper IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnabledHeart: true));
        self.listUser.append(Person(name: "Fabricio", age: 30, profession: "Develper IOS", salary: "20.000,00", imageUser: UIImage(systemName: "person.circle") ?? UIImage(), isEnabledHeart: true));
    }
    
    // Computed Variable
    public var numberOfRows: Int {
        return self.listUser.count;
    }
    
    public func loadCurrentUser(indexPath: IndexPath) -> Person {
        return self.listUser[indexPath.row];
    }
    
    public func getName(indexPath: IndexPath) -> String {
        return self.listUser[indexPath.row].name;
    }
    
}
