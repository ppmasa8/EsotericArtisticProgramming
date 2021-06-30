# EsotericArtisticProgramming
junk and joke programs.

## How to use
- `$ ruby File-name.rb` or `$ ruby File-name.gen.rb`
- `$ ruby File-name-gen.rb > File-name.rb`
- `$ echo Some-string | rot13.rb`
- `$ ruby qounter.rb | ruby | ruby ...` The value of the counter changes depending on the number of times ruby is read
- `$ ruby rh-test.rb rh.rb`

## Example
ex) react.rb
![react](https://user-images.githubusercontent.com/75968942/123910560-96f6d980-d9b5-11eb-8471-ef7d05b724e0.gif)
ex) nerv.rb and gen ascii
![nerv](https://user-images.githubusercontent.com/75968942/123910658-bdb51000-d9b5-11eb-8394-1f0d0df77aa5.gif)


## Reference for create bitmap
ex) `convert nerv.png jpg:- | jp2a - --chars=012 | tr '2' ' '`

https://blog.shotarok.com/post/2015-12-17_hello-quine-world/
