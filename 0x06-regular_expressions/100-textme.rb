#!/usr/bin/env ruby
puts ARGV[0].scan(/(?<=from:|to:|flags)(\+?[0-9]+|[a-zA-Z]+|[\W+\d]+\d)/).join(",")
