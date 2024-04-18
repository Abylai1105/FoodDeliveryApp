//
//  ViewController.swift
//  FoodDeliveryApp
//
//  Created by Abylai Omar on 4/17/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let label = UILabel()
        label.text = "Hello World!"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(label)
            
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 20)
        ])
             
        label.font = .systemFont(ofSize: 40, weight: UIFont.Weight(rawValue: 20))
        label.textColor = .white
        
        view.backgroundColor = .green
    }


}

