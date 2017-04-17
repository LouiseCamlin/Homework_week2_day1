class SportsTeam
  attr_accessor :team_name
  attr_accessor :players
  attr_accessor :coach
  attr_accessor :points
  

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def get_team_name
    @team_name
  end

  def get_new_coach(new_coach)
    return @coach = new_coach
  end

  def get_new_player(new_player)
    @players << new_player
  end

  def see_if_player_is_on_team(player_name)
    for team_mate in @players
      return player_name if player_name == team_mate
    end
      return "Nope, they're not on this team"
  end

  def updates_to_score(result)
    @points += 1 if result == "win"
    @points -= 1 if result == "lose"
  end



end