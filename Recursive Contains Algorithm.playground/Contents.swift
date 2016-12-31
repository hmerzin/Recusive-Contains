//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

extension String {
    func has(string: String, index: Int = 0)  -> Bool {
        var selfString = NSString(string: self)
        print(index)
        if(index + Array(string.characters).count > Array(self.characters).count) {
            //print(index + Array(string.characters).count)
            return false
        }
        selfString = selfString.substring(with: NSMakeRange(index, Array(string.characters).count)) as NSString
        if (selfString as String == string) {
            //print(selfString)
            return true
        } else {
            return has(string: string, index: index + 1)
        }
    }
}

"asdf1234".has(string: "sd")