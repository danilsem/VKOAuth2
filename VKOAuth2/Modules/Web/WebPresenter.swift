//
//  WebPresenter.swift
//  VKOAuth2
//
//  Created by Admin on 02.09.2020.
//  Copyright (c) 2020 Danil Semenov. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import Foundation
import WebKit

final class WebPresenter {

    // MARK: - Private properties -

    private unowned let view: WebViewInterface
    private let interactor: WebInteractorInterface
    private let wireframe: WebWireframeInterface

    // MARK: - Lifecycle -

    init(view: WebViewInterface, interactor: WebInteractorInterface, wireframe: WebWireframeInterface) {
        self.view = view
        self.interactor = interactor
        self.wireframe = wireframe

        self.loadURL(using: interactor.authPageURL)
    }
}

// MARK: - Extensions -

extension WebPresenter: WebPresenterInterface {
    func loadURL(using string: String) {
        guard let url = URL(string: string) else { return }
        view.loadURL(url)
    }
    
    func didFinishLoadWebPage(with url: URL?) {
        guard let url = url else { return }
        guard let urlHost = url.host else { return }
        guard let redirectHost = URL(string: interactor.authRedirectURL)?.host else { return }
        
        if urlHost == redirectHost {
            interactor.login(url: url) { [weak self] (isSuccess) in
                if isSuccess {
                    self?.wireframe.popBack()
                }
            }
        }
    }
}
