import Foundation

protocol Interacting {
    
}

final class Interactor: Interacting {
    let presenter: Presenting
    
    init(presenter: Presenting) {
        self.presenter = presenter
    }
}
