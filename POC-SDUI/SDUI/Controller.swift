import UIKit

protocol Controlling: AnyObject {
    
}

final class Controller: UIViewController, Controlling {
    
    let interactor: Interacting
    
    init(interactor: Interacting) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        view = View()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
