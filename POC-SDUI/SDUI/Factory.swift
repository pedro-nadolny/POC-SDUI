import Foundation
import UIKit

final class Factory {

    static func makeController(screenId: String, navigation: UINavigationController? = nil) -> UIViewController {
        let router = Router()
        let presenter = Presenter(router: router)
        let interactor = Interactor(presenter: presenter)
        let controller = Controller(interactor: interactor, router: router)
        
        router.controller = controller
        presenter.controller = controller
        
        return controller
    }
}
