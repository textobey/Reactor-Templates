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
        case action
    }
    /// Mutation은 뷰에는 노출하지 않고, State를 조작합니다.
    enum Mutation {
        case mutation(Bool)
    }
    /// State는 뷰의 현재 상태입니다.
    struct State {
        var state: Bool
    }
    /// 초기 상태값입니다.
    let initialState: State
    
    init() {
        self.initialState = State(
            state: false
        )
    }
    
    /// Action -> Mutation
    func mutate(action: Action) -> Observable<Mutation> {
        switch action {
        case .action:
            return Observable.just(.mutation(true))
        }
    }
    
    /// Mutation -> State
    func reduce(state: State, mutation: Mutation) -> State {
        var state = state
        switch mutation {
        case .mutation(let set):
            if set {
                state.state = true
            }
        }
        return state
    }
}
