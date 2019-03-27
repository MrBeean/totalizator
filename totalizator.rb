def calculate_match_score(score_team_a, score_team_b, user_score_team_a, user_score_team_b)
  [score_team_a, score_team_b, user_score_team_a, user_score_team_b].each do |number|
    abort 'Что-то не то с данными' unless number.class == Integer
    abort 'Отрицательный счет?' if number < 0
  end

  real_score = [score_team_a, score_team_b]
  user_guess = [user_score_team_a, user_score_team_b]

  if real_score[0] == user_guess[0] &&  user_guess[1] == real_score[1]
    1
  elsif real_score[0] - real_score[1] > 0 && user_guess[0] - user_guess[1] > 0 ||
        real_score[1] - real_score[0] > 0 && user_guess[1] - user_guess[0] > 0 ||
        real_score[1] == real_score[0] && user_guess[1] == user_guess[0]
    0
  else
    -1
  end
end

p calculate_match_score(0,7,0,1)
