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
- [ ] Make sure the test fails before implementing the method
- [ ] Implement the method to make the test pass


----------------------------------

User story 1
| In order to use public transport|
|As a customer|
|I want money on my card|

User story 2
|In order to keep using public transport|
|As a customer|
|I want to add money to my card|
