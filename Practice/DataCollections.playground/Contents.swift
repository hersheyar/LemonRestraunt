import UIKit


let dishes = ["Pizza", "Pasta", "Salad"]
print(dishes[0])


var orders = [String]()
orders.append("Burger")
orders.append("Soup")

print(orders.count)



let desserts = ["Bannana Pudding", "Cheesecake", "Ice Cream", "Tiramisu"]

print(desserts.count)


let menuPrices: [String: Double] = [
    "Pizza": 12.996,
    "Pasta": 11.998,
    "Salad": 9.99
]

print(menuPrices["Pizza"]!)

let total = menuPrices["Pizza"]! + menuPrices["Pasta"]!
print(String(format:"%.2f", total))



var drinks:[String: Double] = [
    "Soda": 2.49,
    "Beer": 5.99,
    "Wine": 12.99
]
print(drinks["Soda"]!)

drinks["Cocktails"] = 8.99


print(drinks)



var ingredients:[String: Int] = [
    "Tomato": 2,
    "Cheese": 3,
    "Onion": 1,
    "Oregano": 2
]

for dish in dishes{
    print(dish)
}
print("-----------------------")

let stuffs :[String: Double] = [
    "Tacos": 5.99,
    "Sushi": 10.99,
    "Doritos": 1.99
]

for (stuff, price) in stuffs{
    print ("\(stuff) costs \(price)")
}


let prices = [8.0, 12.5, 7.0, 15.0]

var count = 0

for price in prices {
    if price > 8 {
        count += 1
    }
}

print(count)


prices.forEach { price in
    print(price)
}



let calories = [0, 150, 80]

calories.forEach { calorie in
    if calorie > 100{
        print("High Calorie ammout! \(calorie) Calories")
    }
    
}




var stock:[String: Int] = [
    "Burger": 5,
    "Soup": 3
]
print(stock)
stock["Soup"] = 4
print(stock)


