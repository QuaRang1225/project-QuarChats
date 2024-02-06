//
//  Presenter.swift
//  Window
//
//  Created by 유영웅 on 2/5/24.
//

import Foundation


protocol Routing{
    func reouteLanding()
}
class Presenter:Presentation{
    private let router:Routing
    init(router:Routing) {
        self.router = router
    }
}
