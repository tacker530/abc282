#B - Let's Get a Perfect Score
N,M = gets.chomp.split.map(&:to_i)
S  = Array.new(N)
N.times do |i|
    w = gets.chomp.gsub("o","1").gsub("x","0")
    S[i] = w.chars.map(&:to_i)
end

X = S.combination(2).to_a
cnt = 0
X.each do |x|
  work = 0
  M.times do |i|
    if x[0][i] + x[1][i] >= 1 then
      work += 1
    end
  end
  if work >= M then
    cnt += 1
  end
end

puts cnt