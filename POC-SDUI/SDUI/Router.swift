import UIKit

protocol Routing {
    func navigateTo(screenId: String)
    func dismiss()
}

final class Router: Routing {
    weak var controller: UIViewController?
    
    func navigateTo(screenId: String) {
        let controller = Factory.makeController(screenId: screenId)
        routeTo(controller)
    }
    
    func dismiss() {
        guard let controller = controller else { return }
        
        let dismissMethod = controller.navigationController?.dismiss ?? controller.dismiss
        dismissMethod(true, nil)
    }
    
    private func routeTo(_ controller: UIViewController) {
        guard let currentController = self.controller else { return }
        
        if let navigation = currentController.navigationController {
            navigation.pushViewController(controller, animated: true)
            return
        }
        
        currentController.present(controller, animated: true)
    }
}
