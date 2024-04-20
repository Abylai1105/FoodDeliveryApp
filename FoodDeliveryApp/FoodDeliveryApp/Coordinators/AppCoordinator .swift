//
//  AppCoordinator .swift
//  FoodDeliveryApp
//
//  Created by Abylai Omar on 4/20/24.
//

import UIKit

class AppCoordinator: Coordinator {
    override func start() {
        showOnboardingFlow()
    }
    override func finish() {
        print("AppCoordinator finish")
    }
}

// MARK: - Navigator methods
private extension AppCoordinator {
    func showOnboardingFlow() {
        guard let navigationController = navigationController else {return}
        let onboardingCoordinator = OnboardingCoordinator(type: .onboarding, navigationController: navigationController, finishDelegate: self)
        addChildCoordinator(onboardingCoordinator)
        onboardingCoordinator.start()
        
    }
    func showMainFlow() {
        
    }
}

// MARK: - FinishDelegate
extension AppCoordinator: CoordinatorFinishDelegate {
    func coordinatorDidFinish(childCoordinatro: CoordinatorProtocol) {
        removeChildCoordinator(childCoordinatro)
        
        switch childCoordinatro.type {
        case .app:
            return
        default:
            navigationController?.popToRootViewController(animated: false)
        }
    }
}
