import UIKit


// Variables & Constants


// snake case = var user_name

// camel case = var userName


//String
var userName = "James"
userName.append("o")
userName.lowercased()
userName.uppercased()
print(userName)

var userSurname = "harden"

userName = "Lars"
print(userName)
// integer & double & float


//integer
let userAge = 50 // let => inmutable
let myNumber = 4

// double
let userAgeD = 50.0 // let => inmutable
let myNumberD = 4.0

userAge / myNumber
userAgeD / myNumberD


// bool

var myBoolen = false
myBoolen = true



var myString : String
var myString2 : String = "Kayra"
myString = "Vural"

var myInt : Int = 10
let stringNumber : String = String(20)
stringNumber



// ARRAYS

var myFavoriteMovies = ["Kill Bill"," Toys Story", "Transformens", 5, true] as [Any]

// as -> casting
// any -> any object


myFavoriteMovies[0]
myFavoriteMovies[1]
myFavoriteMovies[2]
myFavoriteMovies[3]
myFavoriteMovies[4]


var myStringArray = ["test1","test3","test3"]

myStringArray[0].uppercased()

myStringArray.count

myStringArray[myStringArray.count - 1 ]

myStringArray.last

myStringArray.sort()



// SET


var mySet : Set = [1,2,3,4,5]
print(mySet)

//=> birden fazla ayni veri olursa tek sefer yazdirir.
var myIntArray = [1,2,3,5,6,7,3,1,2,5,1,2,6,7]
var myIntSet = Set(myIntArray)

print(myIntArray)
print(myIntSet)

var mySet1 : Set = [1,2,3]
var mySet2 : Set = [3,4,5]
var mySet3 = mySet1.union(mySet2)

print(mySet3)

//Dictionary  key-value

var myFavoritesDirectors = ["Pulp Fictuin" : "Tarantino","Lock,Stock" : "Guy Ritchie" , "The Dark Night" : "Christopher Nolan" ]


myFavoritesDirectors["Pulp Fictuin"]

myFavoritesDirectors["Pulp Fictuin"]
myFavoritesDirectors["Lock,Stock"]

myFavoritesDirectors["Pulp Fictuin"] = "Quentin Tarantino"

myFavoritesDirectors["Seven Samurai"] = "Akai Kurisowa"

print(myFavoritesDirectors)



// LOOPS

//While


var number = 0

while number <= 10 {
    print(number)
    number += 1
}


var characterAlive = true

while characterAlive == true{
    print("character alive")
    characterAlive = false
}

3 < 5
5 > 3
5 >= 3
5 == 5
4 != 5



var myFruitsArray = ["banana", "apple","orange"]


for myFruit in myFruitsArray{
    print(myFruit)
}


var myNumbers = [10,20,30,40,50,60]

for numbers in myNumbers{
    var newNumbers = numbers / 5
    print(newNumbers)
}



// if - else
// &&  and
// || or


var myAge = 30

if myAge < 30{
    print("30 -")
} else if myAge > 30 && myAge < 40{
    print("30 - 40")
}else{
    print("30")
}

// And => t-t = t , t-f = f
3<5 && 8<7

// or => t-t = t , t-f = t , f-f = f

3>5 || 8<7


// Function


func myFunc(){
    print("My func")
}
//myFunc()


func sumFunc(x:Int, y:Int)-> Int {
    var a = x + y
    return a
}


sumFunc(x: 2, y: 20)


func logicFunc(a:Int,b:Int)-> Bool{
    if a>b{
        return true
    }
    else{
        return false
    }
}


var equals = logicFunc(a: 2, b: 10)
print(equals)


var myName : String = "James"
var mySurname :String?

myName.uppercased()

mySurname?.uppercased()


var myStringAge = "f"

var myInteger = (Int(myStringAge) ?? 0) * 5


if let myStringNumber = Int(myStringAge){
    print(myStringNumber * 5)
}else{
    print("wrong input")
}
