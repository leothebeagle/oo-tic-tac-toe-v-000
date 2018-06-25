#Comparing my #won? to the one provided in the solution

def won?
WIN_COMBINATIONS.detect do |win_combination| #the detect enumerator is a form of iteration. In this case it'll run through the win combination arrays
  #one at a time and as soon as it finds one that is true, it'll return it as an array. So for a top row win, it'll return [0,1,2] and will stop iterating.
if win_combination.all? do |win_position| #this iteration runs through every array and return true if it is all "X"
    @board[win_position] == "X"
end
  true
elsif win_combination.all? do |win_position| #this iteration runs through every array and return true if it is all "O"
  @board[win_position] == "O"
end
  true
else
  false
  end
end
end




#so the code below was provided in the solution and looks more concise and therefore more elegant. However, at first glance this seems more confusing to me
def won?
    WIN_COMBINATIONS.any? do |combo|
      if position_taken?(combo[0]) && @board[combo[0]] == @board[combo[1]] && @board[combo[1]] == @board[combo[2]]
        return combo
      end
    end
  end
