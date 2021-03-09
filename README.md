# oyster_card

Creating a project that acts like an oyster card.


1. Create a Gemfile
- [x] Construct a valid Gemfile
- [x] Specify a correct source for gems
- [x] Specify the latest Ruby version
- [x] Add the rspec gem to ‘test’ and ’development’ groups
- [x] Commit only this Gemfile

  DONE

2. Create RSpec conventional files
- [x] Generate conventional files (helper and config) for an RSpec project using a command-line option of the rspec executable file
- [x] Follow RSpec naming convention for files and folders
- [x] Create a test file for the Oystercard class without any tests but with a describe block (doesn't exist yet)

  DONE

3. Learn debugging basics
- [x] Write down the file path where the error happened
*/Users/jackhooper/Documents/Makers/Week Two - (Full Course)/oyster_card/spec/oystercard_spec.rb*
- [x] Write down the line number of the error
*rb:2*
- [x] Use the Ruby Documentation to find out what the error means
*There is no Oystercard class so cannot produce anything*
- [x] Suggest one way of solving the error
*Create an Oystercard class in a lib dir*

  DONE

4. Add the balance
- [x] Write up a plan for how you will interact with your code and manually test in IRB.
- [x] Create a unit test for the Oystercard class
- [x] Write a failing test that checks that a new card has a balance
- [x] Write code that will make this test pass
- [x] Now refactor by setting the balance in initialize using an instance variable
- [x] Remove the balance method entirely and replace with an attr_reader

  DONE

5. Enable top up functionality
- [x] Write up a plan for how you will interact with your code and manually test in IRB.
- [x] Write a test for the top_up method
- [x] Make sure the test fails before implementing the method
- [x] Implement the method to make the test pass

DONE

6. Enforce maximum balance

- [x] Write up a plan for how you will interact with your code and manually test in IRB.
- [x] Write a test that checks the `top_up` method throws an exception if the new balance would exceed the limit.
- [x] Use a constant to store the limit
- [x] Implement the limit in the top_up method. Use an inline `if` statement to check if the limit would be exceeded
- [x] Make the error message include the limit value
- [x] Use interpolation to keep your code DRY

7. Deduct the money

- [x] Write up a plan for how you will interact with your code and manually test in IRB.
- [x] Write a test for the `deduct` method, see it fail
- [x] Implement the method, see the test pass

DONE

8 

----------------------------------

User story 1
| In order to use public transport|
|As a customer|
|I want money on my card|

User story 2
|In order to keep using public transport|
|As a customer|
|I want to add money to my card|

|In order to protect my money from theft or loss|
|As a customer|
|I want a maximum limit (of £90) on my card|

>oyster.top_up(40)
>> "Card succesfully topped up. Balance is now £40."
>oyster.top_up(60)
>> "Card max limit is £90. Top up failed, no money added."

In order to pay for my journey
As a customer
I need my fare deducted from my card

>oyster.deduct(4)
>> £4 Fare deducted. New balance is £36.
