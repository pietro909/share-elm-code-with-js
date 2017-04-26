# Sharing Elm code with Javascript
## An exploration

### The problem

Running a mixed codebase Elm/Javascript, I would like to be able to call Elm
functions from Javascript.

> That's why we have ports.

Cool. The problem is that ports are asynchronous: if I have a function `sum a b` in
Elm and I want it to be exposed as `sum(a,b)` to Javascript.

If I use ports, I can't write something like this:

```javascript
var n = ports.sum(1,2);
```

I would like to be able to send Elm functions out as data and find them in javascript, like:

```elm
port sendFunction : (Int -> Int -> Int) -> Cmd Msg

add : Int -> Int
add a b =
    a + b

-- ...somewhere, in your code...
    sendfunction add
```

It won't work, since a function is not serializable by ports.

TODO: finish this README, now I'm in a hurry!

This is the POC, btw:

http://jsbin.com/pedateg/edit?js,console
