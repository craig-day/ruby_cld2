# Compact Language Detection for Ruby

This is a ruby wrapper for Google [Compact Language Detector 2](https://code.google.com/p/cld2/).

## Usage
a. Include the Gem
```ruby
gem 'cld2', :git => 'git@github.com:craig-day/cld2.git'
```
b. Call the function on a given string.
```ruby
require 'cld2'
#...
CLD2.detect_language("Hola mis amigos!")
=> {:name => "SPANISH", :code => "es", :reliable => true}
```

### Source
To get the source used to compile `ext/lib/libcld2.so` and `ext/lib/libcld2_full.so`
```
# Non-members may check out a read-only working copy anonymously over HTTP.
svn checkout http://cld2.googlecode.com/svn/trunk/ cld2-read-only
```
