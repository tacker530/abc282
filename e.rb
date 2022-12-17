# E - Choose Two and Eat One
N,M = gets.chomp.split.map(&:to_i)
A =   gets.chomp.split.map(&:to_i)

# 得点計算
def point(a, b, m)
  (a**b + b**a ).modulo(m)
end

puts point(4,3,M)