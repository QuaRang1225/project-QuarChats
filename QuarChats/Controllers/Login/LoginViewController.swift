//
//  LoginViewController.swift
//  QuarChats
//
//  Created by 유영웅 on 8/30/24.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "로그인"
        navigationController?.navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.label
        ] //타이틀 색상 변경

        view.backgroundColor = .systemBackground
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "회원가입", style: .done, target: self, action: #selector(didTapRegister))
    }
    
    @objc private func didTapRegister(){
        let vc = RegisterViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
