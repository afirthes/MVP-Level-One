//
//  MainPresenter.swift
//  MVP-Level One
//
//  Created by Afir Thes on 24.12.2022.
//

import Foundation

protocol MainViewProtocol: AnyObject {
    func greet(with message: String)
}

protocol MainViewPresenterProtocol: AnyObject {
    init(view: MainViewProtocol, person: Person)
    func showGreeting()
}

class MainPresenter: MainViewPresenterProtocol {
    let view: MainViewProtocol
    let person: Person
    
    required init(view: MainViewProtocol, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        let greeting = "Приветствую тебя, о великий \(self.person.firstName) \(self.person.lastName)"
        self.view.greet(with: greeting )
    }
    
    
}
