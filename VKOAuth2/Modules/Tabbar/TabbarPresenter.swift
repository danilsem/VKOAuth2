//
//  TabbarPresenter.swift
//  VKOAuth2
//
//  Created by Admin on 10.09.2020.
//  Copyright (c) 2020 Danil Semenov. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import Foundation

final class TabbarPresenter {

    // MARK: - Private properties -

    private unowned let view: TabbarViewInterface
    private let interactor: TabbarInteractorInterface
    private let wireframe: TabbarWireframeInterface

    // MARK: - Lifecycle -

    init(view: TabbarViewInterface, interactor: TabbarInteractorInterface, wireframe: TabbarWireframeInterface) {
        self.view = view
        self.interactor = interactor
        self.wireframe = wireframe
    }
}

// MARK: - Extensions -

extension TabbarPresenter: TabbarPresenterInterface {
}
