defmodule Game do
  def play do
    hints = 'flour, water, yeast, bakery'
    IO.puts "Hints: #{hints}"

    guess_attempt = guess
    attempt(guess_attempt)
  end

  def guess, do: get_guess("Guess the word: ")

  def guess(greeting), do: get_guess(greeting)

  def get_guess(greeting) do
    IO.gets(greeting) |> String.strip
  end

  def attempt("bread"), do: IO.puts 'won!'

  def attempt(_wrong_guess) do
    IO.puts 'That is not correct!'
    guess_attempt = guess("Try again: ")
    attempt(guess_attempt)
  end

end