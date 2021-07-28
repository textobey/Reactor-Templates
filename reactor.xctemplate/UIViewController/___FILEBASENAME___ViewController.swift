//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import UIKit
import RxFlow
import RxSwift
import RxCocoa
import SnapKit
import Then
import ReactorKit

class ___VARIABLE_sceneName___ViewController: UIBaseViewController, Stepper {
    // Stepper
    var steps = PublishRelay<Step>()
    
    // MARK: - Reactor
    private let reactor = ___VARIABLE_sceneName___ViewReactor()
    
    // MARK: - View
    lazy var subView = ___VARIABLE_sceneName___View()
    
    override init() {
        // Apply reactor injection to the subview without forgetting.
        defer { self.subView.reactor = reactor }
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupLayout()
    }
    
    func setupLayout() {
        view.addSubview(subView)
        subView.snp.makeConstraints {
            $0.edges.equalToSafeAreaAuto(view)
        }
    }
}
