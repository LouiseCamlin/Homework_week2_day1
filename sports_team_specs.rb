require('minitest/autorun')
require('minitest/pride')
require_relative('./sports_team')

class TestSportsTeam < Minitest::Test

  def setup 
    @team1 = SportsTeam.new("The Street", ["Snoop", "Bodie", "Poot", "Omar"], "Stringer")
    @team2 = SportsTeam.new("The Law", ["McNulty", "Bunk", "Carver", "Kima"], "Prezbo")
  end

  def test_get_team_name
    @team1.get_team_name
    assert_equal("The Street", @team1.team_name)
  end

  def test_get_new_coach
    @team1.get_new_coach("Marlo")
    assert_equal("Marlo", @team1.coach)
  end

  def test_get_new_player
    @team1.get_new_player("Brother Mouzone")
    assert_equal(["Snoop", "Bodie", "Poot", "Omar","Brother Mouzone"], @team1.players)
  end
  
  def test_see_if_player_is_on_team
    @team1.see_if_player_is_on_team("Snoop")
    assert_equal("Snoop", @team1.see_if_player_is_on_team("Snoop"))
  end

  def test_see_if_player_is_on_team__not
    @team1.see_if_player_is_on_team("Daniels")
    assert_equal("Nope, they're not on this team", @team1.see_if_player_is_on_team("Nope, they're not on this team"))
  end

  def test_updates_to_score
    @team2.updates_to_score("win")
    assert_equal(1, @team2.points)
  end

  
end
