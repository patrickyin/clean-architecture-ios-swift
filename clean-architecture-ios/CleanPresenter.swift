protocol CleanPresenter: class {
    associatedtype V
    
    var view: V? { get set }
    
    func initialise()
    func disposeSubscriptions()
    func memoryWarning()
}

extension CleanPresenter {
    internal func getView() -> V? {
        return view
    }
    
    internal func attachView(view: AnyObject?) {
        self.view = view as? V
    }
    
    internal func detachView() {
        view = nil
    }
}
