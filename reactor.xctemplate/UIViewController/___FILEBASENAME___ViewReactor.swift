//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation
import ReactorKit
import RxSwift
import RxCocoa

class ___VARIABLE_sceneName___ViewReactor: Reactor {
    /// Action은 사용자와의 상호작용입니다.
    enum Action {
        case emitStep(MainSteps)
    }
    /// Mutation은 뷰에는 노출하지 않고, State를 조작합니다.
    enum Mutation {
        case emittingStep(MainSteps)
    }
    /// State는 뷰의 현재 상태입니다.
    struct State {
        var emittedStep:MainSteps = .none
    }
    /// 초기 상태값입니다.
    let initialState: State = State()
    
    init() { }
    
    /// Action -> Mutation
    func mutate(action: Action) -> Observable<Mutation> {
        switch action {
        case .emitStep(let step):
            return Observable.just(.emittingStep(step))
        }
    }
    
    /// Mutation -> State
    func reduce(state: State, mutation: Mutation) -> State {
        var state = state
        switch mutation {
        case .emittingStep(let step):
            var newState = state
            newState.emittedStep = step
            return newState
        }
        return state
    }
}
