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

class ___VARIABLE_sceneName___ViewController: UIBaseViewController, Stepper {
    // Stepper
    var steps = PublishRelay<Step>()
    
    // MARK: - View
    lazy var subView = ___VARIABLE_sceneName___View()
    
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
