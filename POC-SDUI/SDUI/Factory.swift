import Foundation
import UIKit

final class Factory {
    
    static func makeController() -> UIViewController {
        let presenter = Presenter()
        let interactor = Interactor(presenter: presenter)
        let controller = Controller(interactor: interactor)
        
        presenter.controller = controller
        
        return controller
    }
}
