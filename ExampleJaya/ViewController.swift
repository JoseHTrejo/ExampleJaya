//
//  ViewController.swift
//  ExampleJaya
//
//  Created by Jose C. Hernandez on 15/10/20.
//  Copyright © 2020 Jaya. All rights reserved.
//

import UIKit

protocol ManagerDelegate {
    var text: String { get }
    func testFunction()
    func testAnotherFunction()
    func changeText(newText: String)
}

class Manager: ManagerDelegate {
    
    let navigation: NavigationDelegate
    var text: String = ""
    
    init(navigation: NavigationDelegate = Navigation()) { /// inicialisa nuestros Delegados
        self.navigation = navigation
    }
    
    func testFunction() {
        navigation.showViewOne() /// funcion de nuestro segunda Class
    }
    
    func testAnotherFunction() {
        navigation.showViewTwo() /// funcion de nuestro segunda Class
    }
    
    func changeText(newText: String) {
        text = newText
    }
}

protocol NavigationDelegate {
    func showViewOne()
    func showViewTwo()
}

class Navigation: NavigationDelegate {
    
    func showViewOne() {
        ///codigo navegación de un push en un navigationController
    }
    
    func showViewTwo() {
        ///codigo navegación de un push en un navigationController
    }
}
