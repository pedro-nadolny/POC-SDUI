import Foundation

protocol Presenting {
    
}

class Presenter: Presenting {
    weak var controller: Controlling?
}
