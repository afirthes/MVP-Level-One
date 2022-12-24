//
//  ViewController.swift
//  MVP-Level One
//
//  Created by Afir Thes on 24.12.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var greetLable: UILabel!

    var presenter: MainViewPresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    } 
    
    @IBAction func didTappedButtonAction(_ sender: Any) {
        self.presenter.showGreeting()
    }

}

extension MainViewController: MainViewProtocol {
    func greet(with message: String) {
        greetLable.text = message
    }
    
}

