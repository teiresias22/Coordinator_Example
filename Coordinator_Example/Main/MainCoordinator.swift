//
//  MainCoordinator.swift
//  Coordinator_Example
//
//  Created by MarkCloud on 2022/11/24.
//

import UIKit

protocol MainCoordinatorDelegate {
    func didLoggedOut(_ coordinator: MainCoordinator)
    func didMypage(_ coordinator: MainCoordinator)
}

class MainCoordinator: Coordinator, MainViewControllerDelegate {
    var childCoordinators: [Coordinator] = []
    var delegate: MainCoordinatorDelegate?
    
    private var navigationController: UINavigationController!
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = MainViewController()
        viewController.view.backgroundColor = .cyan
        viewController.delegate = self
        
        self.navigationController.viewControllers = [viewController]
    }
    
    func logout() {
        self.delegate?.didLoggedOut(self)
    }
    
    func mypage() {
        self.delegate?.didMypage(self)
    }
}
