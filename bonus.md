# Super Crazy Bonus Release

Edit this file to answer the following questions. Give examples. You may need to do a bit of research. :)

1. Why is Hash.fetch useful?
Because we are working with key:value pairs in hashes, it allows for the searching throughout the hash.

2. What is the disadvantage of single inheritance, and what's a possible solution to that problem?
In situations where your sub classes contain many different data fields from the class your inheriting from, including them in the same table would create a lot of blank/nil value in such a class.

3. Why are these classes initialized with an options hash?
Because when we initialize a new instance of the class, we do not know how many arguments/attributes it will be passed.  Using the options hash will allow us to search the hash (using Hash#fetch) and assign it's value to the instance.

4. What is the purpose of the private keyword in a class? What does it protect you from and why is that valuable?
Private allows you to create methods that are not accessible from outside the class.  This is helpful so that we can 'protect' the user from extra exposed methods/data.

5. Why are concepts like encapsulation, single responsibility, and abstraction important? Now that you've been programming for a while, have you seen any advantages for yourself, or can you imagine them in the future?
-Concepts such as these all aim to make code easier to understand for the next developer
-In the future, I can image such concepts will allow for us to digest large (very very large) code bases much easier.
