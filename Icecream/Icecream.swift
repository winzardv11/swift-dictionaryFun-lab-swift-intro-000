//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream: [String : String] = ["Joe" : "Peanut Butter and Chocolate",
                                                        "Tim" : "Natural Vanilla",
                                                        "Sophie" : "Mexican Chocolate",
                                                        "Deniz" : "Natural Vanilla",
                                                        "Tom" : "Mexican Chocolate",
                                                        "Jim" : "Natural Vanilla",
                                                        "Susan" : "Cookies 'N' Cream"]
    
    
    
    
    // 2.
    func names(forFlavor flavor: String) -> [String] {
        var list: [String] = [""]
        for (name, flavour) in favoriteFlavorsOfIceCream{
            if flavor == flavour {
                list.append(name)
            } else {
                return list
            }
        }
        return list
    }
    
    // 3.
    func count(forFlavor flavor: String) -> Int {
        var tally: Int = 0
        for (key, value) in favoriteFlavorsOfIceCream {
            if value == flavor {
                tally += 1
            } else {
                return tally
            }
        }
        return tally
    }
    
    // 4.
    func flavor(forPerson person: String) -> String? {
        var name: String? = ""
        for (key, value) in favoriteFlavorsOfIceCream {
            if person == value {
                return key
            } else {
                name = nil
                return name
            }
        }
        return name
    }
    
    
    // 5.
    func replace(flavor: String, forPerson person: String) -> Bool{
        var change: Bool = false
        for (key, value) in favoriteFlavorsOfIceCream {
            if person == key {
                favoriteFlavorsOfIceCream[key] = flavor
                change = true
                return change
            } else {
                change = false
                return change
            }
        }
        return change
    }
    
    // 6.
    func remove(person: String) -> Bool {
        var delete: Bool = false
        for (key, value) in favoriteFlavorsOfIceCream {
            if person == key {
                favoriteFlavorsOfIceCream.removeValue(forKey: key)
                delete = true
                return delete
            }else {
                return delete
            }
        }
        return delete
    }
    
    // 7.
    func numberOfAttendees() -> Int {
        let count = favoriteFlavorsOfIceCream.count
        return count
    }
    
    
    // 8.
    func add(person: String, withFlavor: String) -> Bool {
        var add: Bool = false
        for (key, value) in favoriteFlavorsOfIceCream {
            if person == key {
                favoriteFlavorsOfIceCream.updateValue(withFlavor, forKey: person)
                add = true
                return add
            } else {
                return add
            }
        }
        return add
    }
    
    
    // 9.
    func attendeeList() -> String {
                var sentence: String = ""
                let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        
                for (index, name) in allNames.enumerated() {
                        if index < allNames.count - 1 {
                                if let flavor = favoriteFlavorsOfIceCream[name] {
                                        sentence += "\(name) likes \(flavor)\n"
                                    }
                            } else {
                                if let flavor = favoriteFlavorsOfIceCream[name] {
                                        sentence += "\(name) likes \(flavor)"
                                    }
                            }
                    }
        
                return sentence
            }
    

}
