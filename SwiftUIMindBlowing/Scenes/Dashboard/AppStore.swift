//
//  Copyright © 2020 An Tran. All rights reserved.
//

import SwiftUI
import Combine

// MARK: - App

typealias AppStore = Store<AppState, AppAction, AppEnvironment>

class AppEnvironment {}

enum AppAction {
    case reset
    case save(scenario: Scenario)
}

struct AppState {
    @AppStorage("scenario")
    var scenario: Scenario = .default
}

enum Scenario: String, Equatable {
    case `default`
    case fullproject_twitter
}

func appReducer(
    state: inout AppState,
    action: AppAction,
    environment: AppEnvironment) -> AnyPublisher<AppAction, Never>? {

    switch action {
        case .reset:
            state.scenario = .default
        case .save(let scenario):
            state.scenario = scenario
    }

    return nil
}

// MARK: - Infrastructure

typealias Reducer<State, Action, Environment> = (inout State, Action, Environment) -> AnyPublisher<Action, Never>?

final class Store<State, Action, Environment>: ObservableObject {

    @Published private(set) var state: State

    private let reducer: Reducer<State, Action, Environment>
    private let environment: Environment
    private var cancellables: Set<AnyCancellable> = []

    init(
        initialState: State,
        reducer: @escaping Reducer<State, Action, Environment>,
        environment: Environment
    ) {
        self.state = initialState
        self.reducer = reducer
        self.environment = environment
    }

    func send(_ action: Action) {
        guard let effect = reducer(&state, action, environment) else {
            return
        }

        effect
            .receive(on: DispatchQueue.main)
            .sink(receiveValue: send)
            .store(in: &cancellables)
    }
}
