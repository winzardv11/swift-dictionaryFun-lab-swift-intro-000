# I Scream, You Scream: Ice Cream & Dictionaries

![](http://i.imgur.com/nTw93vs.jpg?1)

> Forget art. Put your trust in ice cream. -[Charles Baxter](https://en.wikipedia.org/wiki/Charles_Baxter_(author))

# Overview

In this lab, you'll create and change, update, and add values to a dictionary. You'll also write methods to interpret the information in a dictionary. 

# Instructions

 In this lab, you have been given the outline of several functions. These functions have been declared, but have no useful bodies. In order to make the rest of the code in the playground work, you will have to declare some variables and fill in the function bodies so all tests pass. When you have completed the lab successfully, you should see no errors and correct output in the console.
 
 Note that some of the code is test code. _Only change code that is explicitly marked!_ The tests should run without fail when you have completed the lab. The sections you should _not_ changed are marked **Check Your Work!** These sections include tests that check to make sure your code is working. If you see errors, go back and make sure your code is 100% correct!
 
 The "stub" functions you have been given currently have a simple `return` statement marked `DELETE THIS LINE`. This `return` statement has been included so the function's code will actually compile, but you can and should delete this line of code when fixing the functions. The lines marked `DELETE THIS LINE` have no useful code (and, in fact, return the _wrong_ values).
 
 Let's get started!
 
---

# 1.

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

---

# 2.

Create the following function called `names(forFlavor:)` It will take a flavor of ice-cream as input and return back an array of names of people who like that ice-cream flavor. The input parameter should be a `String` value called `flavor`--and a return type of [`String`]. 

_HINT_: Your method signature should look like this:

```swift
    func names(forFlavor flavor: String) -> [String] {

    }    
```

Hint: Within your implementation, use a `for-in` loop to iterate over the `favoriteFlavorsOfIcream` dictionary you created in the first instruction!

You should be able to pass all the tests associated with this function which can be found in the `IcecreamTests.swift` file under the `// 2.` comment before moving forward.

---

# 3.

Create a function called `count(forFlavor:)`. It will take in a flavor of ice-cream as input and return back the number of pople who like that ice-cream flavor. The input parameter should be a `String` value called `flavor`--and a return type of `Int`.

Hint: Within your implementation, use a `for-in` loop to iterate over the `favoriteFlavorsOfIcream` dictionary you created in the first instruction!

Similar to the other functions, this function is being tested.

---

# 4.

Create a function called `flavor(forPerson:)`. It will take in a persons name as input and return back the flavor that that person likes. The input parameter should be a `String` value called `person` with a return type of `String?`

If a given person doesn't doesn't exist, return `nil`.

This function is being tested.

---

# 5.

Susan made it to the store, but Tim decided that he doesn't want Natural Vanilla. He wants Pistachio instead. He texted Susan to change his mind. Susan should've left her phone at home! Now she needs you write a function, `replace(flavor:forPerson:)`, that will change the given person's preferred ice cream flavor to a new one. Return `true` if the person's preferred flavor was changed, or `false` if it was not. If the person has not even RSVP'ed to the party (meaning they're not part of our original dictionary), do nothing but return `false`. 

The function should be called `replace(flavor:forPerson:)`. It will take in a flavor and a person as input and return back true or false depending on whether or not that person already exists within our dictionary. If the person does exist, we should update that persons new favorite ice-cream flavor to the the flavor passed in as input. The first input parameter should be a `String` value called `flavor` and the second input parameter should be a `String` value called `person`. The return type should be `Bool`.

This function is being tested.

---

# 6.

Uh oh! Deniz just texted Susan to let her know she can't come to the party. Create the new function described below so that we can remove the person passed in as an argument from the guest list, that way Susan doesn't accidentally buy ice cream for that person. The function should return `true` if the person who is being removed had previously been attending the party (exist in the dictionary), and `false` if they were never attending in the first place.

We

 

 

<a href='https://learn.co/lessons/DictionaryFun' data-visibility='hidden'>View this lesson on Learn.co</a>
