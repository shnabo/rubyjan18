# Create a class called Player.
# Every player should have four attributes: gold_coins, health_points, lives, and score.
# lives should start at 5.
# gold_coins and score should both start at 0.
# health_points should start at 10.
# Your class should have an instance method called do_battle that subtracts one from the player's health_points.
# If health_points reaches zero, subtract one from lives and reset health_points to ten. If you have run out of lives, this method should run another method called restart (see below).
# The restart instance method should set all attributes back to their starting values (5, 0, 0, and 10).
# Your class should have an instance method called level_up that increases lives by one and subtracts ten from score.
# Your class should have an instance method called collect_treasure that accepts one number as an argument and adds that amount to gold_coins. If gold_coins is ten or greater, score should increase by one and gold_coins should decrease by ten. If score reaches ten then the collect_treasure method should run the level_up method.
# Don't forget to test out your code every step of the way by creating instances of your class and trying to run your different methods. You should be committing every time you get a new method working.

Class Player
  def initialize(gc, hp, l, s)
   @gold_coins = 0
   @health_points  = 10
   @lives = l
   @score = 0
  end
  def do_battle
     @health_points = @health_points - 1 #(also works as @healthpoints -= 1)
     if @health_points == 0
     	  @lives -= 1
        @lives == 0
     	  @lives += 10
     else
     end
     return self
  end
end
