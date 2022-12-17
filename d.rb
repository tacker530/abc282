# D - Make Bipartite 2
N,M = gets.chomp.split.map(&:to_i)

link = Array.new(M)
M.times do |v|
  link[v] = gets.chomp.split.map(&:to_i)
end

pp link