//
//  MainViewController.swift
//  Coordinator_Example
//
//  Created by MarkCloud on 2022/11/24.
//

import UIKit

protocol MainViewControllerDelegate {
    func logout()
}

class MainViewController: UIViewController {
    var delegate: MainViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        let item = UIBarButtonItem(title: "logout", style: .plain, target: self, action: #selector(logoutButtonTap))
        self.navigationItem.rightBarButtonItem = item
    }
    
    deinit {
        print("- \(type(of: self)) deinit")
    }
    
    @objc
    func logoutButtonTap() {
        self.delegate?.logout()
    }
}
