The Geometry deparment is 


1. Create a class Shape. This class will serve as a blueprint for the rest of the shapes in this program. 


```
class Shape

end 
```


2. In `class Shape`, use an attribute reader method to add `sides` and `vertices` as attributes.


```
class Shape 
  attr_reader  :sides, :vertices 
end 

```



3. In `class Shape`, write an initialize method that takes an an argument called `number_of_sides`. 

The initialize method will initialize a new instance of shape with `@sides` and `@vertices`, which are both equal to the `number_of_sides` passed into the `initialize` method. 


```
class Shape 
  attr_reader  :sides, :vertices 
end 

```


4. Create a `class Rectangle` that inherits the behavior of `class Shape`.


```
class Rectangle < Shape

end 

```


5. In `class Rectangle`, use an attribute reader method to add `length` and `width` as attributes. 


```
class Rectangle < Shape

end 

```



6. In `class Rectangle`, write an initialize method that takes the `length` and `width` as arguments. The method should initialize the rectangle with a `length` and a `width`. 


```
class Rectangle < Shape

  def initialize(length, width)
    @length = length
    @width = width
    super(4)
  end 

```


7. Beneath the previous method, write an `area` method that returns the area of a rectangle. The `area` can be defined as the `length` * `width`. 


```
  def area
    @area ||= length * width
  end
```


8. Beneath the previous method, write a `permeter` method that returns the perimeter of a rectangle. The `perimeter` of a rectangle can be defined as 2 * (`length` + `width`). 


```
  def perimeter
    @perimeter = 2 * (length + width)
  end
```


9. Create a `class Square` that inherits from `class Rectangle`. 


```
class Square < Rectangle

end
```


10. In `class Square` write an initialize method that takes `length` as an argument. Use the super class to initialize it. 


```
class Square
  def initialize(length)
    super(length, length)
  end
end 
```


11. Create a `class Circle` that inherits from `class Shape`. 


```
class Circle < Shape

end 

```


12. In `class Circle`, write an initialize method that takes a `diameter` as an argument, with a default `diameter` of 1. 

The initialize method should initialize a Circle with a `@diameter` and a `radius`. Recall that a radius is half the diameter. 


```
class Circle < Shape
  def initialize(diameter = 1)
    @diameter = diameter
    @radius = diameter/2
    super(1 / 0.0)
  end
end
```


13. In `class Circle`, write a method `area` that returns the area of a circle. Recall that the area of a circle is π * radius**2.  


```
  def area
    @area ||= π * radius**2
  end
```


14. Create a `class Die` that inherits from `class Shape`

```
class Die < Shape

end

```


15. In `class Die`, write an initialize method. The initialize method should take `sides` as an argument. 

```
class Die < Shape
  def initialize(sides)
    super(sides)
  end
```


16. Beneath the initialize method, write a method `roll` that returns a random number from one of the sides. 


```
  def roll
    rand(@sides).next
  end
```


17. 


```
class Shape
  @@our_shapes = []

end

```



18. 



```
class Shape
  ... 

  def self.inherited(subclass)
    @@our_shapes << subclass
  end

end

```



19. 


```
class Shape
  ... 

  def self.our_shapes
    @@our_shapes
  end

end

```



20. Create a program runner for the classes you just created. 



21. Program runner



22. Program runner 




