//
//  OnboardingCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Abylai Omar on 4/20/24.
//

import UIKit

class OnboardingCoordinator: Coordinator {
    override func start() {
        let vc = ViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    override func finish() {
        print("AppCoordinator finish")
    }
}

