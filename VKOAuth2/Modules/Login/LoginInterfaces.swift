//
//  LoginInterfaces.swift
//  VKOAuth2
//
//  Created by Admin on 02.09.2020.
//  Copyright (c) 2020 Danil Semenov. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit

enum LoginNavigationOption {
    case home
    case web
}

protocol LoginWireframeInterface: WireframeInterface {
    func navigate(to option: LoginNavigationOption)
}

protocol LoginViewInterface: ViewInterface {
}

protocol LoginPresenterInterface: PresenterInterface {
    func tappedLogin()
}

protocol LoginInteractorInterface: InteractorInterface {
}
