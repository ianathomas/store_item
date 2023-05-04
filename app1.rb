#!/usr/bin/env ruby

require "tty-table"

table = TTY::Table.new do |t|
  t << ["a1", "a2"]
  t << ["b1", "b2"]
end

puts table.render(:ascii)
# =>
#  +-------+-------+
#  |header1|header2|
#  +-------+-------+
#  |a1     |a2     |
#  +-------+-------+
#  |b1     |b2     |
#  +-------+-------+