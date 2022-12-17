# C - String Delimiter
N = gets.chomp.to_i
S = gets.chomp.chars

flag = false
S.each do |s|
  if s == "\"" then
    if flag == true  then
      flag = false # 括られていない状態に入った
    else
      flag = true # 括られている状態に入った
    end
  end

  if flag then
    print s
  else
    print s.gsub(",",".")
  end
end