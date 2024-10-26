class MainController < ApplicationController

  def rules
    render({:template => "main/rules"})
  end

  def rock
    @we_play = "rock"
    they_can_play = ["rock","paper","scissors"]
    @play = rand(0..2)
    @they_play = they_can_play[@play]
    
    if @they_play == "rock"
      @outcome = "tied"
    elsif @they_play == "paper"
      @outcome = "lost"
    else
      @outcome = "won"
    end
    render({:template => "main/rock" })
  end

  def paper
    @we_play = "paper"
    they_can_play = ["rock","paper","scissors"]
    @play = rand(0..2)
    @they_play = they_can_play[@play]
    
    if @they_play == "rock"
      @outcome = "won"
    elsif @they_play == "paper"
      @outcome = "tied"
    else
      @outcome = "lost"
    end
    render({:template => "main/paper"})
  end

  def scissors
    @we_play = "scissors"
    they_can_play = ["rock","paper","scissors"]
    @play = rand(0..2)
    @they_play = they_can_play[@play]
    
    if @they_play == "rock"
      @outcome = "lost"
    elsif @they_play == "paper"
      @outcome = "won"
    else
      @outcome = "tied"
    end
    render({:template => "main/scissors"})
  end
end
