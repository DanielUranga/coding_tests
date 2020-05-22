#!/bin/env ruby

# Apple and Orange: https://www.hackerrank.com/challenges/apple-and-orange/problem

def between(val, left, right)
    return val >= left && val <= right
end

def countApplesAndOranges(s, t, a, b, apples, oranges)
    puts apples.reduce(0) { |sum, apple| between(a + apple, s, t)? sum + 1 : sum }
    puts oranges.reduce(0) { |sum, orange| between(b + orange, s, t)? sum + 1 : sum }
end

countApplesAndOranges(7, 10, 4, 12, [2, 3, -4], [3, -2, -4])
