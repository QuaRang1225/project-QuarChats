//
//  LoginViewController.swift
//  QuarChats
//
//  Created by 유영웅 on 8/30/24.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let titleView:UILabel = {
        let label = UILabel()
        label.text = "로그인"
        label.font = .systemFont(ofSize: 40, weight: .black)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let registerButton:UIButton = {
        let button = UIButton()
        button.setTitle("회원가입", for: .normal)
        button.setTitleColor(.link, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let imageView:UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "ellipsis.message.fill")
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
        return imageView
        
    }()
    
    private let backgorundColor:UIImageView = {
       let imageView = UIImageView()
        imageView.image = UIImage(named: "background")
        imageView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 300)
        imageView.transform = CGAffineTransformMakeRotation(180 * Double.pi/180)
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.label
        ] //타이틀 색상 변경

        view.backgroundColor = .systemBackground
        
        view.addSubview(backgorundColor)
        view.addSubview(imageView)
        view.addSubview(registerButton)
        view.addSubview(titleView)
        
        NSLayoutConstraint.activate([
            titleView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            registerButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            registerButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        ])
        
        registerButton.addTarget(self, action: #selector(didTapRegister), for: .touchUpInside)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let size = view.frame.size.width/3
        imageView.frame = CGRect(x: size, y: 100, width: size, height: size)
    }
    
    @objc private func didTapRegister(){
        let vc = RegisterViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

#Preview{
    UINavigationController(rootViewController: LoginViewController())
}
