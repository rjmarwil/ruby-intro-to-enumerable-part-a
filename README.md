Intro to enumerable part A
==================================================================

## Class Notes:

### Expressions and Statements:

#### What is an expression?

Any piece of code that evaluates to a value, this includes:

- *values* - `7`, `"thing"`
- variables - `x`, `foo`
- operators - `+`, `<<`, `*`
- functions - `exit`, `puts`

#### What is a statement?

A statement is a group of expressions to be carried out (or executed). Some examples:

- *assignment* (and reassignment) statment - `x = 8`
- *return* statement - `return true`
- *function* (or *method*) *call* statement - `exit()`

We will use the term *statement* exclusively when talking about code, since we are primarily interested in action and not theory.

**Note: _Programs are just groups of statements._**

#### Code Evaluation

We can say that code is *evaluated* when every *statement* is reduced to a value, and no *expressions* remain. For example:

```
"Sometimes the greatest writers,  " + " are not writers at all," + "but monkeys with typewriters."
```

evaluates to:

```
"Sometimes the greatest writers,   are not writers at all,but monkeys with typewriters."
```

Another example:

```
1 + 2 + 3 + 4 + 5
```

evaluates to:

```
15
```

### Remember `.to_s`?

#### What is a receiver?
-	Suppose we have the following class:

```
class Foo
  def only_method
    puts "also best method! duh!"
  end
end
```
-	And the following code that uses this class:

```
foo = Foo.new # uses the implicit constructor provided by Ruby
foo.only_method
# => "also best method! duh!"
```

In this case `foo`, the *object*, is an instance of `Foo`, the *class*. When the *instance method*, `only_method` is called: `foo.only_method` it is said that `foo` is the **_receiver_** of the method call.

#### Getting back to .to_s

- `.to_s` is a method that returns the `String` representation of the *receiver*
	- it is defined on **_EVERY_** object (even `nil`!!!)
	- can be thought of as "to `String`" (it is `.toString()` in many languages including `Java`, `JavaScript`, and `Scala`)

## Let's talk about those specs...

The way we have the tests set up in each exercise file is NOT how it is normally done. We configured it this way so you don't have to traverse between folders and files to see your related methods and tests. To 'properly' set up methods and tests, you normally create a spec directory with your test files and a lib directory with your classes and methods. But back to our specs...

#### How do those specs get run?

* bundle
* cd into the exercises folder
* run `$ ruby <filename>` (OR `$ ruby all.rb` for all the specs)
