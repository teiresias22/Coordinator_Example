//
//  MypageCoordinator.swift
//  Coordinator_Example
//
//  Created by MarkCloud on 2022/11/25.
//

import UIKit

protocol MypageCoorinatorDelegate {
    func didMain(_ coordinator: MypageCoordinator)
}

class MypageCoordinator: Coordinator, MypageViewControllerDelegate {
    
    
    var childCoordinators: [Coordinator] = []
    var delegate: MypageCoorinatorDelegate?
    
    private var navigationController: UINavigationController!
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = MypageViewController()
        viewController.view.backgroundColor = .darkGray
        viewController.delegate = self
        
        self.navigationController.viewControllers = [viewController]
    }
    
    func main() {
        self.delegate?.didMain(self)
    }
}
