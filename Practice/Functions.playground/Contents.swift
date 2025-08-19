import UIKit

func greet(person: String)->String{
    let greeting = "Hello, \(person)!"
    print(greeting)
    return greeting
}


greet(person: "Andrew")

func greet2(person: String, formally: Bool = false)->(String, Bool){
    if formally {
        return ("Greetings, \(person).", true)
    }else{
        return ("Whats up, \(person)", false)
    }
}

let (response, _) = greet2(person: "Andrew", formally: true)
let (response1, _) = greet2(person:"Andrew", formally: false)
print(response)
print(response1)



func deliveryTime(minutes: Int) -> String {
    return "Ready in \(minutes) minutes"
}

let message = deliveryTime(minutes: 10)
print(message)



func total(price: Double, tax: Double) -> String {
    let taxAmount = price * tax / 100
    let totalPrice = price + taxAmount
    return String(format: "Total: $%.2f", totalPrice)
}

let cost = total(price: 100, tax: 7)
print(cost)

func applyDiscount(price: Double, discount: Double) -> Double {
    let finalPrice = max(0, price)
    let pct = min(max(0, discount), 100)
    return finalPrice * (1 - pct / 100)
}


let discounted = applyDiscount(price: 100, discount: 15) // 85.0
print(String(format: "Discounted: $%.2f", discounted))



