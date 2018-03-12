class Team

attr_reader :team, :points
attr_accessor :coach, :players

  def initialize(team_name, player_list, coach_name)
    @team = team_name
    @players = player_list
    @coach = coach_name
    @points = 0
  end

  def new_player(new_player_name)
    @players << new_player_name

  end

  def check_player(name_checked)
    return @players.include?(name_checked)
  end

  def score(victory)
    @points += victory
    p @points
  end





























end
