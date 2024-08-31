//
//  RegisterViewController.swift
//  QuarChats
//
//  Created by 유영웅 on 8/30/24.
//

import UIKit

class RegisterViewController: UIViewController {

    @objc private let dismissButton:UIButton = {
        let button = UIButton()
        let configuration = UIImage.SymbolConfiguration(pointSize: 20, weight: .bold)
        let image = UIImage(systemName: "chevron.left", withConfiguration: configuration)
        button.setImage(image, for: .normal)
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        view.addSubview(dismissButton)
        
        NSLayoutConstraint.activate([
            dismissButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            dismissButton.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 20)
        ])
        
        dismissButton.addTarget(self, action: #selector(dismissView), for: .touchUpInside)
    }
    @objc func dismissView(){
        self.navigationController?.popViewController(animated: true)
    }
}

#Preview{
    RegisterViewController()
}
