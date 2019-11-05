//nill is the absence of a value
// ? Optional
// ! Fore Unwrap
var score: Int?
score = 80

if score != nil {
    print("Score is \(score!)")
}

// if score is not equal to nil asign its value to current score
if let currentScore = score {
    print("My current score is \(currentScore)")
}

var newScore: Int! = 95
print("My new score is \(newScore)")

//var test: Int
//test = nil

class Vehicle {
    var wheelNum = 4
    var speed = 25
    var mpg = 20
    let tankCapacity = 20
    var name : String
    
    init(vehicleName vname: String){
        name = vname
    }
    
    func changeSpeed(amount:Int){
        speed = speed + amount
    }
    func changeEfficiency(newSpeed:Int, newmpg:Int){
        speed = newSpeed
        mpg = newmpg
    }
}

let myJeep = Vehicle(vehicleName: "rodeo")
myJeep.mpg
myJeep.speed
myJeep.name
myJeep.speed = 50
myJeep.speed

//let suv = Vehicle()
//suv.name

//class Bicycle : Vehicle {
//    var reflector : Bool
//
//    init(_ ref:Bool){
//        reflector=ref
//        super.init()
//    }
//
//    override init(){
//        reflector = true
//        super.init()
//    }
//}
//
//var bike = Bicycle()
//bike.reflector
//bike.wheelNum
//bike.wheelNum = 2
//bike.wheelNum

var shoppingList = ["cereal","milk"]
print(shoppingList[0])
shoppingList.append("bagels")
print("\(shoppingList.count)")
shoppingList.insert("cream cheese", at: 2)
print(shoppingList[2])
print(shoppingList[3])

var myList=[String]()
print("\(myList.count)")

var myList2:[String]

var newList=[String:String]()
var classes:[String:String] = ["4120":"MAD", "2200":"web"]
classes["4120"]
classes.updateValue("Mobile app dev", forKey: "4120")
classes["4120"]
classes.removeValue(forKey: "2200")
classes["2000"]="MIT"
classes.count
