#!/bin/env ruby

# Grading students: https://www.hackerrank.com/challenges/grading/problem

def gradingStudents(grades)
    grades.map do |grad|
        if (grad >= 38)
            missing = 5 - (grad % 5)
            if (missing <= 2)
                grad = grad + missing
            end
        end
        grad
    end
end

pp gradingStudents([73, 67, 38, 33])
