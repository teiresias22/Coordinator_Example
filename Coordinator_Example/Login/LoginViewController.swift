//
//  LoginViewController.swift
//  Coordinator_Example
//
//  Created by MarkCloud on 2022/11/24.
//

import UIKit

protocol LoginViewControllerDelegate {
    func login()
}

class LoginViewController: UIViewController {
    var delegate: LoginViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let item = UIBarButtonItem(title: "Login", style: .plain, target: self, action: #selector(self.loginButtonDidTap))
        self.navigationItem.rightBarButtonItem = item
    }
    
    deinit {
        print("- \(type(of: self)) deinit")
    }
    
    @objc
    func loginButtonDidTap() {
        self.delegate?.login()
    }

}
