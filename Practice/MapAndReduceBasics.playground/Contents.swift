import UIKit

/*
 .map()
 Method used to transform each element of a collection into a new value, creating a new array with the results.
 */


let prices = [8.50, 12.00, 14.25]
let pricesWithTax = prices.map{ Double(String(format: "%.2f", $0 * 1.16))! }
print(pricesWithTax)

let numbers = [1,2,3]
let doubled = numbers.map{ $0 * 2 }
print(doubled)

let desserts = ["Cake", "Ice Cream", "Pie"]
let emojiMenu = desserts.map{ dessert in
    
    if dessert == "Cake" {
        return "🍰\(dessert)"
    }  else if dessert == "Ice Cream" {
        return "🍦\(dessert)"
    } else if dessert == "Pie" {
        return "🥧\(dessert)"
    } else {
        return "\(dessert)"
    }
}
print(emojiMenu)



let coursePrices = [8.50, 12.00, 14.25]
let total = coursePrices.reduce(0) { sum, price in
    sum + price
}

print(total)


let prices2 = [8.50, 12.00, 14.25, 6.25]
let premiumCount = prices2.reduce(0) { count, price in
    price >= 10 ? count + 1 : count
}
print ("Premium items: \(premiumCount)")
