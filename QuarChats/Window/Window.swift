//
//  Window.swift
//  Window
//
//  Created by 유영웅 on 2/5/24.
//

import Foundation
import  UIKit

protocol Presentation{
    
}

class Window:UIWindow{
    
    var presenter:Presenter?
    override init(windowScene: UIWindowScene) {
        super.init(windowScene: windowScene)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
