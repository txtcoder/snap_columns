#!/usr/bin/env ruby

require_relative 'snap_columns/snap_columns'

words = ARGF.read.chomp.split(' ')

matrix =  SnapColumns::get(words)

matrix.first.size.times do |row|
  puts "#{matrix[0][row]}#{' ' * (matrix[0].max_size - matrix[0][row].to_s.size)} " +
       "#{matrix[1][row]}#{' ' * (matrix[1].max_size - matrix[1][row].to_s.size)} " +
       "#{matrix[2][row]}#{' ' * (matrix[2].max_size - matrix[2][row].to_s.size)}"
end
