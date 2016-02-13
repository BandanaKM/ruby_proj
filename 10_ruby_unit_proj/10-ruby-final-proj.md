


1. Create a `class Person`. 

```
class Person

end
```

2. In `class Person`, create an `initialize` method. The initialize method should take two arguments a `name` and a `card_number`. The default value of the `card_number` should be set to the value of a string `'none'`.

```
class Person
  def initialize(name, card_number = 'none')
  end
end
```

3. Create a `class Book`

```
class Book

end
```


4. In `class Book`, create an initialize method. The initialize method should take four arguments a `title`, `author`, `type`, and an `isbn` number. 

```
class Book

  def initialize(title, author, type, isbn)
    @title = title
    @author = author
    @type = type
    @isbn = isbn
  end
end
```


5. Create a `module Reservable`. This module will manage reserve-related behavior on each instance of a book. 


```
module Reservable

end
```


6. In `module Reservable`, create a method `reserve` that takes an argument of `boolean`. Give the `boolean` argument a default value of false.

```
module Reservable

  def reserve(boolean = false)
    @reserved = boolean
  end

end
```


7. In `module Reservable`, create a method `reserved?` that returns whether a book is reserved or not. 


```
module Reservable

  def reserved?
    @reserved
  end
end
```


8. Create a `module Loanable`. This module will manage the loan-related behavior on each instance of a book.


```
module Loanable
  
  ...

  def on_hold?
    @hold
  end

end
```

9. In the module 


```
module Loanable

  def due_date(duration_in_days = 7)
    Time.now + duration_in_days * 36_000
  end

  ...

end 
```



10. Create a `module Enablizer`. This module will allow us to create privileges for different books. 


```
module Enablizer

end 
```



11.


```
module Enablizer

  def make_loanable
    singleton_class.include(Loanable)
  end 

end 
```


11. 

```
module Loanable

  def make_reservable 
    singleton_class.include(Reservable)
  end 

end 
```


12. 




13. 
