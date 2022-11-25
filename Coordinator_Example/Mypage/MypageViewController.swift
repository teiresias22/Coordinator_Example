//
//  MypageViewController.swift
//  Coordinator_Example
//
//  Created by MarkCloud on 2022/11/25.
//

import UIKit

protocol MypageViewControllerDelegate {
    func main()
}

class MypageViewController: UIViewController {
    var delegate: MypageViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        let item = UIBarButtonItem(title: "main", style: .plain, target: self, action: #selector(mypageButtonTap))
        self.navigationItem.rightBarButtonItem = item
        
    }
    
    deinit {
        print("- \(type(of: self)) deinit")
    }
    
    @objc
    func mypageButtonTap() {
        self.delegate?.main()
    }
}
