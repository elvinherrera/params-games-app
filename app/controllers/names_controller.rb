class NamesController < ApplicationController
  def query_params_method
    @name = params[:name].upcase
    if @name.starts_with?("A")
      @a_name = "hey, your name starts with an 'A'" 
    end
    render "query_params.html.erb"
  end

  def query_params_game_method
      @number = params[:guessed_number].to_i
    @answer = 36
    if @number > @answer 
      @message = "Too high!"
    elsif @number < @answer
    @message = "Too low!"
    else 
    @message = "You win!"
    end  
    render "query_params_game_method.html.erb"
  end

  def form_params_method
    render "form.html.erb"
  end

  def form_result_method
    @number = params[:guessed_number].to_i
    @answer = 36
    if @number > @answer 
      @message = "Too high!"
    elsif @number < @answer
    @message = "Too low!"
    else 
    @message = "You win!"
    end  
    render "result.html.erb"
end
end

