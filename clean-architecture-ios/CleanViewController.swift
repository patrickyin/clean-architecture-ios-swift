import UIKit

class CleanViewController<P: CleanPresenter>: UIViewController {
    var presenter: P?
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        presenter?.memoryWarning()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initPresenter()
    }
    
    deinit {
        presenter?.disposeSubscriptions()
        presenter?.detachView()
    }
    
    private func initPresenter() {
        presenter?.attachView(view: self)
        presenter?.initialise()
    }
}
