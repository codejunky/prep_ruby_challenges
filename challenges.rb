def power(base, exponent)
  return base if exponent == 1
  base * power(base, exponent-1)
end

def factorial(n)
  return 1 if n == 1
  n * factorial(n-1)
end

def uniques(array)
  array & array
end

def combinations(arr1, arr2)
  result = []
  arr1.each do |str|
    arr2.each do |str2|
      result << str + str2
    end
  end
  result
end

def is_prime?(n)
  (2..n/2).each do |d|
    return false if n % d == 0
  end

  return true
end

def counting_game(players, number)
  next_player = 1
  direction = :+
  stop = 100

  (1..number).each do |count|
    # Change the players' turn direction if count is a multiple of 7
    direction = count % 7 == 0 ? :- : :+

    # after player's 10 turn next one should be player 1
    next_player = 1 if next_player > player

    puts "Player: #{next_player} says #{count}"

    # if next player is one and the direction is :- change it to :+
    # player 0 or lower don't exist
    direction = next_player == 1 && direction == :- ? :+ : direction

    # if count is multiple of 11 skip next player
    next_player += 1 if count % 11 == 0

    # Get next player
    next_player = next_player.send(direction, 1)
  end
end
