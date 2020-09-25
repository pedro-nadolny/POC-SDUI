import Foundation

protocol Interacting {
    
}

class Interactor: Interacting {
    
    let presenter: Presenting
    
    init(presenter: Presenting) {
        self.presenter = presenter
    }
}
