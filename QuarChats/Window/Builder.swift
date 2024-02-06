//
//  Builder.swift
//  Window
//
//  Created by 유영웅 on 2/5/24.
//

import UIKit

public class Builder{
    public static func build(windowScene:UIWindowScene) -> UIWindow {
        let window = Window(windowScene: windowScene)
        let router = Router()
        let presenter = Presenter(router: router)
        window.presenter = presenter
        return window
    }
}
