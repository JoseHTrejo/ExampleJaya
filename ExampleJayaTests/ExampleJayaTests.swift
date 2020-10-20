//
//  ExampleJayaTests.swift
//  ExampleJayaTests
//
//  Created by Jose C. Hernandez on 15/10/20.
//  Copyright © 2020 Jaya. All rights reserved.
//

import XCTest
@testable import ExampleJaya

final class ExampleJayaTests: XCTestCase {
    
    func testValidEmail() {
        let validations = FormValidatorUseCase()
        
        let emailValid = "test@test.com"
        let emailInvalid = "test.test.com"

        XCTAssertTrue(validations.isValidEmail(emailValid), "is valid")
        XCTAssertFalse(validations.isValidEmail(emailInvalid), "is invalid")
    }
    
    func testValidName() {
        let validations = FormValidatorUseCase()
        
        let nameValid = "Jose Hernandez Trejo"
        let nameInvalid = "Jose 12345 Trejo"
        
        XCTAssertTrue(validations.isValidName(nameValid), "is valid")
        XCTAssertFalse(validations.isValidName(nameInvalid), "is invalid")
    }
    
    func testValidOnlyNumbers() {
        let validations = FormValidatorUseCase()
        
        let onlyNumbersValid = "12345678"
        let onlyNumbersInvalid = "Jose12345678"
        
        XCTAssertTrue(validations.validateOnlyNumbers(onlyNumbersValid), "is valid")
        XCTAssertFalse(validations.validateOnlyNumbers(onlyNumbersInvalid), "is invalid")
    }
    
    func testValidNil() {
        let nilValid = ""
        let noNilInvalid = "Jose"
        
        XCTAssertNil(nilValid, "is nil")
        XCTAssertNotNil(noNilInvalid, "is not nil")
    }
    
    /// cambio de pantallas
    func testShowViewOne() {
        let navigation = DummyNavigation() /// Accedemos nuestra clase
        var viewOneShowed = false
        navigation.viewOneShowed = {
            viewOneShowed = true
        }
        
        let manager = Manager(navigation: navigation) /// Inicializa el Manager con el navigation
        manager.testFunction() /// accede a la funcion
        
        XCTAssertTrue(viewOneShowed, "View One showed") /// Se ajecuta la funcion de la primera vista
    }
    
    ///comparación
    func testChangeText() {
        let newText = "newText"
        let textX = "new"
        let manager = Manager()
        
        manager.changeText(newText: newText) /// Mandamos el texto
        XCTAssertTrue(manager.text == newText, "Text is the same")
    }
}

internal class DummyNavigation: NavigationDelegate {
    
    var viewOneShowed: (() -> Void)? /// Ejecucion de bloque de codigo
    var viewTwoShowed: (() -> Void)?

    func showViewOne() {
        viewOneShowed?()
    }
    
    func showViewTwo() {
        viewTwoShowed?()
    }
}
