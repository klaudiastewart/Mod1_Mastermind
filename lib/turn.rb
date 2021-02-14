
class Turn
  attr_reader :guess_input

  def initialize(secret_code)
    @secret_code = secret_code
    @counter = 0
  end

  def check_positions_colors
    @pegs_array = []  #reset
    (0..3).each do |index|
      @pegs_array << "red" if @secret_code[index] == @guess_input[index]
    end
    # if @secret_code[1] == @guess_input[1]
    #   @pegs_array << "red"
    # end
    # if @secret_code[2] == @guess_input[2]
    #   @pegs_array << "red"
    # end
    # if @secret_code[3] == @guess_input[3]
    #   @pegs_array << "red"
    # end
    # require "pry"; binding.pry

    # @secret_code.each_char do |char|
    #   (0..3).each do |index|
    #     if char == @guess_input[index]
    #       @pegs_array << "white"
    #       break
    #     end
    #   end
    # end

    #XX (1..3)each do |index|
    #   @secret_code[0] == @guess_input[1] || @secret_code[0] == @guess_input[2] || @secret_code[0] == @guess_input[3]
    # end
    #
    # @whiteys = (0..3).count do |index1|
    #   (0..3).any? do |index2|
    #     @secret_code[index1] == @guess_input[index2] && index1 != index2
    #   end
    # end

    if @secret_code[0] == @guess_input[1] || @secret_code[0] == @guess_input[2] || @secret_code[0] == @guess_input[3]
      @pegs_array << "white"
    end
    if @secret_code[1] == @guess_input[0] || @secret_code[1] == @guess_input[2] || @secret_code[1] == @guess_input[3]
      @pegs_array << "white"
    end
    if @secret_code[2] == @guess_input[0] || @secret_code[2] == @guess_input[1] || @secret_code[2] == @guess_input[3]
      @pegs_array << "white"
    end
    if @secret_code[3] == @guess_input[0] || @secret_code[3] == @guess_input[1] || @secret_code[3] == @guess_input[2]
      @pegs_array << "white"
    end
  end

  def get_guess
    puts "Please enter a guess. If you want to quit, press 'q' or press 'c' for the solution."
    @guess_input = gets.chomp.upcase
    @counter += 1
    if @guess_input == "Q"
      puts "You are now leaving the game...LOSER!!!"
      exit
    end
    show_cheat_answer if @guess_input == "C"
  end

  def show_cheat_answer
    puts "The secret code was #{@secret_code}. You are now leaving the game..."
    exit
  end

  def show_guess_results
    # require "pry"; binding.pry
    #clear screen
    # puts "#{@guess_input} has #{@whiteys} of the correct elements with #{@pegs_array.count('red')} in the correct positions."
    puts "#{@guess_input} has #{@pegs_array.count('white')} of the correct elements with #{@pegs_array.count('red')} in the correct positions."
    puts "You've taken #{@counter} guess."
  end

  def turn_look
    p "hi"
    # require "pry"; binding.pry
  end

end
