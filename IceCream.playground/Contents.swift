/*: directions
 
 # I Scream, You Scream: Ice Cream & Dictionaries
 
 In this lab, you have been given the outline of several functions. These functions have been declared, but have no useful bodies. In order to make the rest of the code in the playground work, you will have to declare some variables and fill in the function bodies so all tests pass. When you have completed the lab successfully, you should see no errors and correct output in the console.
 
 Note that some of the code is test code. _Only change code that is explicitly marked!_ The tests should run without fail when you have completed the lab. The sections you should _not_ changed are marked **Check Your Work!** These sections include tests that check to make sure your code is working. If you see errors, go back and make sure your code is 100% correct!
 
 The "stub" functions you have been given currently have a simple `return` statement marked `DELETE THIS LINE`. This `return` statement has been included so the function's code will actually compile, but you can and should delete this line of code when fixing the functions. The lines marked `DELETE THIS LINE` have no useful code (and, in fact, return the _wrong_ values).
 
 Let's get started!
 
 ## Introduction
 
 Some of the Flatiron School instructors are putting on a summer ice cream party. Mark, one of the instructors, has collected some information on everyone's favorite ice cream flavors. He only wants to make one trip to the grocery store, though, so he needs you to write some functions to remind him what ice cream he needs to buy when he goes.
 
 He asked everyone attending the party what their favorite flavor of ice cream is. Here are the people attending the ice cream party, and what their favorite flavors of ice cream are:
 
 * Joe: Peanut Butter and Chocolate
 * Tim: Natural Vanilla
 * Sophie: Mexican Chocolate
 * Deniz: Natural Vanilla
 * Tom: Mexican Chocolate
 * Jim: Natural Vanilla
 * Mark: Cookies 'N' Cream
 
 ## Instructions
 
 In order to help Mark, you should first create a `Dictionary` to map the names of the party attendees to their preferred flavor of ice cream. Please create that mapping in a variable named `favoriteFlavorsOfIceCream` below: */
// declare `favoriteFlavorsOfIceCream` here
var favoriteFlavorsOfIceCream = [
    "Joe": "Peanut Butter and Chocolate",
    "Tim": "Natural Vanilla",
    "Sophie": "Mexican Chocolate",
    "Deniz": "Natural Vanilla",
    "Tom": "Mexican Chocolate",
    "Jim": "Natural Vanilla",
    "Mark": "Cookies 'N' Cream",
]
/*: directions2
 
 Good! Below, the function `namesForIceCreamFlavor(_:)` has been declared for you, but has no useful body. Fill in the body of `namesForIceCreamFlavor(_:)` to return the name of everyone who likes that particular flavor of ice cream. */
func namesForIceCreamFlavor(flavor: String) -> [String] {
    // write your code here
    var names: [String] = []
    for (name, iceCream) in favoriteFlavorsOfIceCream {
        if iceCream == flavor {
            names.append(name)
        }
    }
    return names
}

/*: directions3
 
 ### Check Your Work!
 
 When you started this lab, the code below had an error. However, if you implemented `namesForIceCreamFlavor(_:)` correctly, the code below should run without failure. */
var names = namesForIceCreamFlavor("Cookies 'N' Cream")
assert(names == ["Mark"], "\(names)")
names = namesForIceCreamFlavor("Mexican Chocolate").sort()
assert(names == ["Sophie", "Tom"], "\(names)")
names = namesForIceCreamFlavor("Black Raspberry")
assert(names == [], "\(names)")

/*: directions4
 
 Mark also needs a function that returns the _number_ of people who like a certain type of ice cream. Finish implementing `countForIceCreamFlavor(_:)` below to return the number of people who like a particular flavor of ice cream. */
func countForIceCreamFlavor(flavor: String) -> Int {
    // write your code here
    var count = 0
    for (_, iceCream) in favoriteFlavorsOfIceCream {
        if iceCream == flavor {
            count += 1
        }
    }
    return count
}

/*: directions5
 
 ### Check Your Work!
 
 When you started this lab, the code below had an error. However, if you implemented `countForIceCreamFlavor(_:)` correctly, the code below should run without failure. */
var count = countForIceCreamFlavor("Natural Vanilla")
assert(count == 3, "\(count)")
count = countForIceCreamFlavor("Peanut Butter and Chocolate")
assert(count == 1, "\(count)")
count = countForIceCreamFlavor("Pistachio")
assert(count == 0, "\(count)")

/*: directions6
 
 Good! Mark also needs a function to find out who likes a particular flavor of ice cream, so he doesn't make mistakes when he's serving ice cream at the party. Complete the function `iceCreamForPerson(_:)` below to return a particular attendee's favorite flavor of ice cream. If a given person doesn't have a favorite flavor of ice cream (or doesn't even exist), return `nil`. */
func iceCreamForPerson(name: String) -> String? {
    // write your code here
    return favoriteFlavorsOfIceCream[name]
}

/*: directions7
 
 ### Check Your Work!
 
 When you started this lab, the code below had an error. If you completed `iceCreamForPerson(_:)`, this code should now run without error.
 */
var iceCream = iceCreamForPerson("Mark")
if let iceCream = iceCream {
    assert(iceCream == "Cookies 'N' Cream", "\(iceCream)")
} else {
    assert(false, "\(iceCream)")
}

iceCream = iceCreamForPerson("Deniz")
if let iceCream = iceCream {
    assert(iceCream == "Natural Vanilla", "\(iceCream)")
} else {
    assert(false, "\(iceCream)")
}

iceCream = iceCreamForPerson("Suzie")
if let iceCream = iceCream {
    assert(false, "\(iceCream)")
}

/*: directions8
 
 Mark made it to the store, but Tim decided that he doesn't want Natural Vanilla. He wants Pistachio instead. He texted Mark to change his mind. Mark should've left his phone at home! Now he needs you write a function, `replaceFlavor(_:forPerson:)`, that will change the given person's preferred ice cream flavor to a new one. Return `true` if the person's preferred flavor was changed, or `false` if it was not. If the person has not even RSVP'ed to the party, do nothing but return `false`. Implement the body of this function below. */
func replaceFlavor(flavor: String, forPerson person: String) -> Bool {
    // write your code here
    if let _ = favoriteFlavorsOfIceCream[person] {
        if let oldFlavor = favoriteFlavorsOfIceCream.updateValue(flavor, forKey: person) {
            return oldFlavor != flavor
        } else {
            return false
        }
    } else {
        return false
    }
}

/*: directions9
 
 ### Check Your Work!
 
 When you started this lab, the code below had an error. If you completed `replaceFlavor(_:forPerson:)`, this code should now work. */

var flavorChanged = replaceFlavor("Pistachio", forPerson: "Tim")
assert(flavorChanged, "\(flavorChanged)")
iceCream = iceCreamForPerson("Tim")
if let iceCream = iceCream {
    assert(iceCream == "Pistachio", "\(iceCream)")
} else {
    assert(false, "\(iceCream)")
}
count = countForIceCreamFlavor("Natural Vanilla")
assert(count == 2, "\(count)")

flavorChanged = replaceFlavor("Cookies 'N' Cream", forPerson: "Mark")
assert(!flavorChanged, "\(flavorChanged)")
iceCream = iceCreamForPerson("Mark")
if let iceCream = iceCream {
    assert(iceCream == "Cookies 'N' Cream", "\(iceCream)")
} else {
    assert(false, "\(iceCream)")
}

flavorChanged = replaceFlavor("Coffee", forPerson: "Suzie")
assert(!flavorChanged, "\(flavorChanged)")
iceCream = iceCreamForPerson("Suzie")
if let iceCream = iceCream {
    assert(false, "\(iceCream)")
}

/*: directions9
 
 Uh oh! Deniz just texted Mark to let her know she can't come to the party. Finish the function `removePerson(_:)` below so that Deniz is removed from the guest list and Mark doesn't accidentally buy ice cream for her. The function should return `true` if the person who is being removed had previously been attending the party, and `false` if they were never attending in the first place. */
func removePerson(name: String) -> Bool {
    // write your code here
    if let _ = favoriteFlavorsOfIceCream.removeValueForKey(name) {
        return true
    } else {
        return false
    }
}

/*: directions10
 
 ### Check Your Work!
 
 When you started this lab, the code below had an error. If you completed `removePerson(_:)`, this code should now work. */
var removed = removePerson("Deniz")
assert(removed, "\(removed)")
iceCream = iceCreamForPerson("Deniz")
if let iceCream = iceCream {
    assert(false, "\(iceCream)")
}
count = countForIceCreamFlavor("Natural Vanilla")
assert(count == 1, "\(count)")

removed = removePerson("Suzie")
assert(!removed, "\(removed)")

/*: directions11
 
 Mark is having trouble keeping track of all the comings and goings of the party. Complete the function `numberOfAttendees()` below that will return the number of people coming to the ice cream party. */
func numberOfAttendees() -> Int {
    // write your code here
    return favoriteFlavorsOfIceCream.count
}

/*: directions12
 
 ### Check Your Work!
 
 When you started this lab, the code below had an error. If you completed `numberOfAttendees()`, this code should now work. */
var attendees = numberOfAttendees()
assert(attendees == 6, "\(attendees)")

/*: directions13
 
 Mark is just getting ready to leave the grocery store when Sophie texts him to ask if her friend Travis can come to the party, too. She says his favorite flavor of ice cream is Strawberry. Now Mark needs you to write a function to add a new person to the guest list, along with their favorite flavor of ice cream. Complete the `addPerson(_:withFlavor:)` function below to add a person and their favorite flavor of ice cream to the guest list. The function should return `true` if the person was added, or `false` if the person was already attending. If the person was already attending, their favorite flavor of ice cream should _not_ be updated, and `false` should be returned instead. */
func addPerson(name: String, withFlavor flavor: String) -> Bool {
    // write your code here
    if let _ = favoriteFlavorsOfIceCream[name] {
        return false
    } else {
        favoriteFlavorsOfIceCream[name] = flavor
        return true
    }
}

/*: directions14
 
 ### Check Your Work!
 
 If you correctly implemented `addPerson(_:withFlavor)`, the code below should have no errors. */
var added = addPerson("Travis", withFlavor: "Strawberry")
assert(added, "\(added)")
iceCream = iceCreamForPerson("Travis")
if let iceCream = iceCream {
    assert(iceCream == "Strawberry", "\(iceCream)")
} else {
    assert(false, "\(iceCream)")
}
attendees = numberOfAttendees()
assert(attendees == 7, "\(attendees)")

added = addPerson("Mark", withFlavor: "Chocolate")
assert(!added, "\(added)")
iceCream = iceCreamForPerson("Mark")
if let iceCream = iceCream {
    assert(iceCream == "Cookies 'N' Cream", "\(iceCream)")
} else {
    assert(false, "\(iceCream)")
}

/*: directions15
 
 Excellent! If Mark's notes and memory are correct, there are now 7 people coming to the party. He'd like you to write a function, `printAttendees()`, which will print "<Name> likes <Ice Cream>", one attendee per line, just so he can make sure he remembers correctly. */
func printAttendees() {
    // write your code here
    for (name, flavor) in favoriteFlavorsOfIceCream {
        print("\(name) likes \(flavor)")
    }
}

/*: directions16
 
 ### Check your work!
 
 If you implemented `printAttendees()` correctly, you should see all the attendees printed to the console, along with their favorite ice cream. */
printAttendees()

/*: directions17
 
 Perfect! If there are no errors in this playground and you see the attendees and their favorite flavors of ice cream printed to the console, give yourself a pat on the back. You've completed the lab! This party is going to be off the chain. Go have some ice cream -- you've earned it! */
