import Foundation

protocol Presenting {
    
}

final class Presenter: Presenting {
    weak var controller: Controlling?
    let router: Routing
    
    init(router: Routing) {
        self.router = router
    }
}
