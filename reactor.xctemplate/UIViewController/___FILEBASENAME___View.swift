//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import UIKit
import SnapKit
import Then
import RxSwift
import RxCocoa
import ReactorKit

class ___VARIABLE_sceneName___View: UIBaseView {
    var disposeBag = DisposeBag()
    
    // MARK: - init
    override init(navigationType: NavigationConfigType = .back) {
        super.init(navigationType: navigationType)
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - View
    lazy var label = UILabel().then {
        $0.text = "___VARIABLE_sceneName___ View"
        $0.textColor = .red
    }
    
    // MARK: - Methods
    func setupLayout() {
        self.addSubview(label)
        label.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
        }
    }
}

// MARK: - ReactorKit
// Conform to the protocol `View` then the property `self.reactor` will be available.
extension ___VARIABLE_sceneName___View: View {
    func bind(reactor: ___VARIABLE_sceneName___ViewReactor) {
        // Action
        // Bind to reactor.action
        bindAction(reactor: reactor)
        
        // State
        // Bind value from UI
        bindState(reactor: reactor)
    }
    
    private func bindAction(reactor: ___VARIABLE_sceneName___ViewReactor) {
    }
    
    private func bindState(reactor: ___VARIABLE_sceneName___ViewReactor) {
    }
}
