//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var x : Int?

let strings = ["a", "123"]
let randomIndex = Int(arc4random() % 2)
let string = strings[randomIndex]

x = string.toInt()

if let intValue = x {
    intValue * 2
} else {
    "no value"
}


let o = "123".toInt()!  // implicitly unwrapped optional
o * 2

//o = "a".toInt()!
//o * 2

let imageView = UIImageView()
imageView.image

if let image = imageView.image {
    "value"
} else {
    "no value"
}