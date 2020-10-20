//
//  validateEmail.swift
//  ExampleJaya
//
//  Created by Developer on 16/10/20.
//  Copyright © 2020 Jaya. All rights reserved.
//

import Foundation

class FormValidatorUseCase {
    func validatePhoneNumber(_ phoneNumber: String) -> Bool {
        let regEx = "^\\d{" + "10" + "}$"
        let test = NSPredicate(format: "SELF MATCHES %@", regEx)
        let result =  test.evaluate(with: phoneNumber)
        return result
    }

    func isValidName(_ name: String) -> Bool {
        let regEx = "^[A-Za-z' ]{2,}+( [A-Za-z']{2,}+)*$"
        let test = NSPredicate(format: "SELF MATCHES %@", regEx)
        let result =  test.evaluate(with: name)
        return result
    }
    
    func isValidLatsName(_ latsName: String) -> Bool {
        let regEx = "^[A-Za-z' ]{2,}+( [A-Za-z']{2,}+)*$"
        let test = NSPredicate(format: "SELF MATCHES %@", regEx)
        let result =  test.evaluate(with: latsName)
        return result
    }

    func isValidEmail(_ email: String) -> Bool {
        let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let test = NSPredicate(format: "SELF MATCHES %@", regEx)
        let result =  test.evaluate(with: email)
        return result
    }
    
    func validateOnlyNumbers(_ number: String) -> Bool {
        let regEx = "^[0-9]*$"
        let test = NSPredicate(format: "SELF MATCHES %@", regEx)
        let result =  test.evaluate(with: number)
        return result
    }
    
    func isValidDoubleNumberFormat(_ number: String) -> Bool {
        let regEx = "^[0-9]+.?[0-9]{0,2}$"
        let test = NSPredicate(format: "SELF MATCHES %@", regEx)
        let result =  test.evaluate(with: number)
        return result
    }
    
    func validateDoubleValueForFormValidation(_ number: String) -> Bool {
        let regEx = "^[0-9]+(.?[0-9]{1,2})*$"
        let test = NSPredicate(format: "SELF MATCHES %@", regEx)
        let result =  test.evaluate(with: number)
        return result
    }
}

