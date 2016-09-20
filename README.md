# Ice Cream & Dictionaries

![](http://i.imgur.com/QztM9eJ.jpg?1)

> You may have to fight a battle more than once to win it. -[Margaret Thatcher](https://en.wikipedia.org/wiki/Margaret_Thatcher)

# Overview

In this lab, you'll create and change, update, and add values to a dictionary. You'll also write methods to interpret the information in a dictionary.

There are tests for each method you have to write in this lab. It might be best for you to create all of the functions first without implementing them so that way the test file will be able to run (when you press command + u). Without doing that, it might not run after you do each one individually because it's the test file is trying to call on methods (to see that you implemented them correctly) that don't exist yet because you haven't gotten to them yet.

Also, if you want to test our your functions yourself to see how things are working, navigate to the `ViewController.swift` file and locate the comment where you can begin testing out your functions yourself utizling the `icecream` variable vailable to you in that class (not mandatory to do this!).
 

# Instructions

## 1.

Some of the Flatiron School instructors are putting on a summer ice cream party. Susan, one of the instructors, has collected some information on everyone's favorite ice cream flavors. She only wants to make one trip to the grocery store, though, so she needs you to write some functions to remind her what ice cream she needs to buy when she goes.
 
She asked everyone attending the party what their favorite flavor of ice cream is. Here are the people attending the ice cream party, and what their favorite flavors of ice cream are:
 
 * Joe: Peanut Butter and Chocolate
 * Tim: Natural Vanilla
 * Sophie: Mexican Chocolate
 * Deniz: Natural Vanilla
 * Tom: Mexican Chocolate
 * Jim: Natural Vanilla
 * Susan: Cookies 'N' Cream

In order to help Susan, locate the `Icecream.swift` file and look for the following comment:

```swift
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
```

Right below this comment, you should create a dictionary of type [`String` : `String`] and assign a default value to the variable. The keys of this dictionary should be the names and the values associated with each of those keys should be that individuals favorite ice-cream. 

In the `IcecreamTests.swift` file, you should be able to pass the test listed under `// 1.` before moving on!


## 2.

Create the following function called `names(forFlavor:)` It will take a flavor of ice-cream as input and return back an array of names of people who like that ice-cream flavor. The input parameter should be a `String` value called `flavor`--and a return type of [`String`]. 

_HINT_: Your method signature should look like this:

```swift
    func names(forFlavor flavor: String) -> [String] {

    }    
```

Hint: Within your implementation, use a `for-in` loop to iterate over the `favoriteFlavorsOfIcream` dictionary you created in the first instruction!

You should be able to pass all the tests associated with this function which can be found in the `IcecreamTests.swift` file under the `// 2.` comment before moving forward.


## 3.

Create a function called `count(forFlavor:)`. It will take in a flavor of ice-cream as input and return back the number of pople who like that ice-cream flavor. The input parameter should be a `String` value called `flavor`--and a return type of `Int`.

Hint: Within your implementation, use a `for-in` loop to iterate over the `favoriteFlavorsOfIcream` dictionary you created in the first instruction!

Similar to the other functions, this function is being tested.


## 4.

Create a function called `flavor(forPerson:)`. It will take in a persons name as input and return back the flavor that that person likes. The input parameter should be a `String` value called `person` with a return type of `String?`

If a given person doesn't doesn't exist, return `nil`.

This function is being tested.


## 5.

Susan made it to the store, but Tim decided that he doesn't want Natural Vanilla. He wants Pistachio instead. He texted Susan to change his mind. Susan should've left her phone at home! Now she needs you write a function, `replace(flavor:forPerson:)`, that will change the given person's preferred ice cream flavor to a new one. Return `true` if the person's preferred flavor was changed, or `false` if it was not. If the person has not even RSVP'ed to the party (meaning they're not part of our original dictionary), do nothing but return `false`. 

The function should be called `replace(flavor:forPerson:)`. It will take in a flavor and a person as input and return back true or false depending on whether or not that person already exists within our dictionary. If the person does exist, we should update that persons new favorite ice-cream flavor to the the flavor passed in as input. The first input parameter should be a `String` value called `flavor` and the second input parameter should be a `String` value called `person`. The return type should be `Bool`.

This function is being tested.


## 6.

Uh oh! Deniz just texted Susan to let her know she can't come to the party. Create the new function described below so that we can remove the person passed in as an argument from the guest list, that way Susan doesn't accidentally buy ice cream for that person. The function should return `true` if the person who is being removed had previously been attending the party (exist in the dictionary), and `false` if they were never attending in the first place.

The function should be called `remove(person:)`. It will take in a person as input and remove them from the dictionary. If it was able to remove them, it should return true.. if not in that they don't exist within the dictionary, it should return false. The input parameter should be a `String` value called `person`. The return type should be `Bool`.

This function is being tested.

## 7.

Susan is having trouble keeping track of all the comings and goings of the party. Complete the function `numberOfAttendees()` below that will return the number of people coming to the ice cream party.

The function should be called `numberOfAttendees()`. The return type should be `Int`.

This function is being tested.

## 8.

Susan is just getting ready to leave the grocery store when Sophie texts her to ask if her friend Travis can come to the party, too. She says his favorite flavor of ice cream is Strawberry. Now Susan needs you to write a function to add a new person to the guest list, along with their favorite flavor of ice cream. Complete the function below to add a person and their favorite flavor of ice cream to the guest list. The function should return `true` if the person was added, or `false` if the person was already attending. If the person was already attending, their favorite flavor of ice cream should _not_ be updated, and `false` should be returned instead.

The function should be called `add(person:withFlavor:)`. The first input parameter should be a `String` value called `person` and the second input parameter should be a `String` value called `flavor`. The return type should be `Bool`.

This function is being tested.

## 9.

If Susan's notes and memory are correct, there are now 7 people coming to the party. She'd like you to write a function, `attendeeList()`, which will create a list "**Name** likes **Ice Cream**", one attendee per line in alphabetical order, just so she can make sure she remembers correctly.

The function should be called `attendeelist()`. The return type should be `String`. 

A hint to help you produce a list in alphabetical order:

```swift
let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
```

`allNames` is an array of `String`'s, placing all the names in alphabetical order. Use this to your advantage. Make sure the last part of your `String` doesn't end with a newline character `\n`.


<a href='https://learn.co/lessons/DictionaryFun' data-visibility='hidden'>View this lesson on Learn.co</a>
