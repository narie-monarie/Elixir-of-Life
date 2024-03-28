# Elixir

- atoms - like constants whose calue are their own name
  - True and False are also atoms(boolean values)

```ex
> :hello
> to_charlist(:hello) # converts an atom to a char list
> to_string(:hello)
```

- Basic arithmetics

```ex
> 10/2        #The answer is 5.0 not 5
> div(10,2)   #The answer is 5
> rem(10,3)   #same as the modulo sign
> round(3.58) #rounds up
> trunc(3.58) #rounds down
> is_integer(2.0) #false -> This is a boolean value
> is_boolean(2) #false
```

- strings

```ex
> "hello" <> "world"
> string = "world"
> "hello #{string}" # hello world -> any type in this is converted into a string
> String.length("ola")
> String.upcase("hello")
```
