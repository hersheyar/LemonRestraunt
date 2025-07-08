//
//  Validation.swift
//  LemonRestraunt
//
//  Created by Andrew Hershey on 7/7/25.
//

import Foundation


struct Validation {
    
    static func isValidName(_ name: String)->Bool{
        return name.count > 2
        
    }
    
    static func isValidGUestCount(_ guest: Int)->Bool{
        return guest > 0
    }
    
    static func guestCoutMessage(_ guest: Int) -> String{
        if guest > 8 {
            return "For parties larger than 8, we will call to confirm"
        }else if guest >= 5 {
            return "For large parties, pleas arrive 10 minutes early"
        }
        return ""
    }
    
    static func isFutureDate(_ date: Date)->Bool{
        return date >= Date()
    }
     
    static func dateValidationMessage(for date: Date) -> String{
        if date < Date() {
            return "please select a valid date"
        }
        return ""
    }
    
    static func hasAllergies(_ allergies: [String])->Bool{
        return !allergies.isEmpty
    }
}
