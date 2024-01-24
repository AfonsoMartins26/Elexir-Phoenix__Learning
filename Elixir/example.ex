defmodule Membership do 
  defstruct [:type, :prices]
end

defmodule User do 
  defstruct [:name, :membership]
end

defmodule Example do


  def hello do
    :world
  end

#Variables

@x 5

  def main do
    @x
  end

#Atoms and Strings

#:hello --atom
#"Hello World!" --string

  def requesitos do
    name = "Afonso"
    status = Enum.random([:gold, :silver ,:"not a member"])

    case status do
      :gold -> "Parabéns #{name}!"
      :"not a member" -> "Faz a subscricao "
      _ -> "És pobre"
  end
  end

  def letrasparanumeros do
    IO.puts(?a)
  end

  def numeros do
    a = 10
    b = a + 3.0
    a+b
  end


  def float do
    Float.ceil(0.1, 6)   # numero e depois a precisao 6
  end

  def gcd do
    Integer.gcd(25, 10) # gcd -> maior divisor comum
  end

#Compound Types
  def tempo do
    time = Time.new!(16, 30, 0, 0)
    date = Date.new!(2025, 1, 1) 
    date_time = DateTime.new!( date, time, "Data e tempo")
    inspect(date_time)
  end


  #Tuples

  def tuplos do 
    #membership = {:bronze ,:silver }
    #membership = Tuple.append(membership, :gold)
     
    gold_membership = %Membership{type: :gold, prices: 25}
    silver_mesmbership = %Membership{type: :silver, prices: 20}
    bronze_membership = %Membership{type: :bronze, prices: 10}
    _none_membership = %Membership{type: :none, prices: 0}





   # price = {5, 10, 15}
    #avg = Tuple.sum(price) / tuple_size(price) # a soma de todos a dividir pelo numero de elementos
    #
    #IO.puts("A media de precos de #{elem(membership,0)} #{elem(membership,1)} #{elem(membership,2)} é #{avg}")
    
#Lists and Loops 

    users = [
      %User{name: "Marco", membership: gold_membership},
      %User{name: "Afonso", membership: silver_mesmbership},
      %User{name: "Vera", membership: bronze_membership},
      %User{name: "Daniel", membership: bronze_membership}
    ]

   
 #     prices = %{ # o sinal de percentagem cerve para criar um map 
 #     gold: 25,
 #     silver: 20,
 #     bronze: 10,
 #     none: 0
 #   }  


    Enum.each(users, fn %User{name: name, membership: membership} -> 
      IO.puts("#{name} has a #{membership.type} membership paying #{membership.prices}")
    end)
  end
  
  # Taking User Input 
  def input do 
    correct = :rand.uniform(11) -1 # numero de 0 a 10 se fosse  uniform(10) irir ser um numeros entre 1 e 10 
    IO.puts(correct)  #:rand.uniform gera um numero aleatorio ,tb podia fazer Enum.random(0..10)
    guess = IO.gets("Adivinha o numeros de 0 a 10: ") |> String.trim()
    
    if String.to_integer(guess) == correct do
      IO.puts("Ganhaste ")
    else 
      IO.puts("Perdeste")
    end 
  end

  #cases and errors

  def input1 do 
    correct = :rand.uniform(11) -1 
    IO.puts(correct)
    guess = IO.gets("Adivinha o numeros de 0 a 10: ") |> String.trim() |> Integer.parse()
      IO.inspect(guess)
    case guess do 
      {result,_} -> IO.puts("parse successful #{result} ")

      if result === correct do 
          IO.puts("You win")
      else 
        IO.puts("You lost")
      end 

      :erro -> IO.puts("Something went wrong" )
    end
  end


  #Lists again
  def listas do 
    grades =[25,50,75,100]
    new = for n <- grades, do: n+5   # vai pecorrer a lista e fazer a funcao indicada
    new = new ++ [130]
    new = [5] ++ new
  end

  #comprehensions with conditions 
  def condicoes do 
    grades =[25,50,75,100]
    new = for n <- grades, do: n+5
    final =[5] ++ new
    even = for n <- final, rem(n, 2) == 0, do: n #condicao === rem (n ,2) == 0 pose ser o que quisermos 
  end 


  def teste do 
    numeros = ["1" ,"2" ,"3" ,"4", "5"]
    resultado = Enum.map(numeros, &String.to_integer/1)  # & serve para meter uma funcao como se fosse um argumento 
    IO.inspect(sum_and_average(resultado))
    print_numbers(resultado)
  end

  def print_numbers(numbers) do 
    numbers |> Enum.join(" ") |> IO.puts()
    end

  #Defining Custom Functions
  def sum_and_average(numbers) do 
    sum = Enum.sum(numbers)
    average = sum / Enum.count(numbers)
    {sum, average}
  end
end
