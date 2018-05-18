class ArticlesPresenter: CleanPresenter {
    typealias V = ArticlesViewController
    internal var view: V?
    
    func initialise() {
        print("NNNNNNNNN")
        getView()?.login()
    }
    
    internal func disposeSubscriptions() {
        
    }
    
    internal func memoryWarning() {
        
    }
}
