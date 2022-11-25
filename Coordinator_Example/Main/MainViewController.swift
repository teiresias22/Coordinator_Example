//
//  MainViewController.swift
//  Coordinator_Example
//
//  Created by MarkCloud on 2022/11/24.
//

import UIKit

protocol MainViewControllerDelegate {
    func logout()
    func mypage()
}

class MainViewController: UIViewController {
    var delegate: MainViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        let logout = UIBarButtonItem(title: "logout", style: .plain, target: self, action: #selector(logoutButtonTap))
        
        let Mypage = UIBarButtonItem(title: "Mypage", style: .plain, target: self, action: #selector(mypageButtonTap))
    
        self.navigationItem.rightBarButtonItems = [logout, Mypage]
    }
    
    deinit {
        print("- \(type(of: self)) deinit")
    }
    
    @objc
    func logoutButtonTap() {
        self.delegate?.logout()
    }
    
    @objc
    func mypageButtonTap() {
        self.delegate?.mypage()
    }
}
