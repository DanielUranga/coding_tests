# Kangaroo: https://www.hackerrank.com/challenges/kangaroo/problem

def kangaroo(x1, v1, x2, v2)
    if (v2 == v1)
        if (x1 == x2)
            return "YES"
        else
            return "NO"
        end
    end
    t = (x1 - x2)/(v2 - v1)
    tmod = (x1 - x2) % (v2 - v1)
    if (t >= 0 && tmod == 0)
        return "YES"
    else
        return "NO"
    end
end

puts (kangaroo 0, 2, 5, 3)
puts (kangaroo 0, 3, 4, 2)
