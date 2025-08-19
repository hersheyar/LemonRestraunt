import UIKit


struct dish {
    var name:String
    var price: Double
}

let pasta = dish(name: "carbonara", price : 20.0)



struct Drink {
    var name: String
    var price: Double
    var isCold: Bool
    var size: String
}

let coffe = Drink(name: "coffe", price: 2.0, isCold: false, size: "small")
