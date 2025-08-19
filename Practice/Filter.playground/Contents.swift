import UIKit


let values = [12.0, 8.5, 4.5, 14.99]


for value in values {
    if value > 10 {
        print(value)
    }
}
let premium = values.filter{$0 > 10}
print(premium)


let dishes = ["Burger", "Fries", "Fish", "Pasta"]



let menu = ["Veggie Salad", "Steak", "Fruit Bowl", "Chicken"]
let vegMenu = menu.filter{$0.contains("Veggie") || $0.contains("Fruit") }
print(vegMenu)
