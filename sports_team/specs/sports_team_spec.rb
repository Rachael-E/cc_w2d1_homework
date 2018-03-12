require('minitest/autorun')
require_relative('../sports_team.rb')

class TestTeam < MiniTest::Test

  def test_team_name
    sports_team = Team.new("Scotland", [], "Chief")
    assert_equal("Scotland", sports_team.team)

  end

  def test_add_new_player
    sports_team = Team.new("Scotland", [], "Chief")
    sports_team.new_player("Laidlaw")
    assert_equal("Laidlaw", sports_team.players[0])

  end

  def test_check_does_player_exist__true
      sports_team = Team.new("Scotland", ["Laidlaw"], "Chief")
      result = sports_team.check_player("Laidlaw")
      assert_equal(true, result)
  end

  def test_check_does_player_exist__false
      sports_team = Team.new("Scotland", ["Laidlaw"], "Chief")
      result = sports_team.check_player("Forbes")
      assert_equal(false, result)
  end

  def test_scoreboard__victory
      sports_team = Team.new("Scotland", [], "Chief")
      sports_team.score(1)
      assert_equal(1, sports_team.points)
  end



end
