#!/usr/bin/env ruby

require_relative 'snap_columns/snap_columns'

words = "a bbs c sd e f g"
words = words.split(' ').sort

matrix =  SnapColumns::get(words)

matrix.first.size.times do |row|
  print "#{matrix[0][row]}#{' ' * (matrix[0].max_size - matrix[0][row].size)} " if matrix[0][row]
  print "#{matrix[1][row]}#{' ' * (matrix[1].max_size - matrix[1][row].size)} " if matrix[1][row]
  print "#{matrix[2][row]}#{' ' * (matrix[2].max_size - matrix[2][row].size)}" if matrix[2][row]
  puts
end
