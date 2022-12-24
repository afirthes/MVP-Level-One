//
//  MainPresenterTest.swift
//  MVP-Level OneTests
//
//  Created by Afir Thes on 24.12.2022.
//

import XCTest
@testable import MVP_Level_One

class MockView: MainViewProtocol {
    var titleTest: String?
    func greet(with message: String) {
        self.titleTest = message
    }
}

final class MainPresenterTest: XCTestCase {
    
    var view: MockView!
    var person: Person!
    var presenter: MainPresenter!
    

    override func setUp() {
        view = MockView()
        person = Person(firstName: "Baz", lastName: "Bar")
        presenter = MainPresenter(view: view, person: person)
        
    }
    
    override func tearDown() {
        view = nil
        person = nil
        presenter = nil
    }
    

    func testModuleIsNotNil() throws {
        XCTAssertNotNil(view, "view is nil")
        XCTAssertNotNil(person, "person is nil")
        XCTAssertNotNil(presenter, "presenter is nil")
    }
    
    func testView() {
        presenter.showGreeting()
        XCTAssertEqual(view.titleTest, "Приветствую тебя, о великий Baz Bar")
    }
    
    func testPersonModel() {
        XCTAssertEqual(person.firstName, "Baz")
        XCTAssertEqual(person.lastName, "Bar")
    }

}
