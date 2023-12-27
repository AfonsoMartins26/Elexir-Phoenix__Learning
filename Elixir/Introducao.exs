defmodule Introducao do
  def hello do
    :world
  end
" se nós metermos uma variavel
nome = Afonso
se fizermos no terminal :
Hello,hastag{name} tudo entre aspas vai incocar a variavel e devolver
Hello,Afonso
div(10,2) == 5

rem 10,3 = 1
rem 10,2 = 0"



#iex> greeting = fn (place) -> "Hello, #{place}!" end --- assim estamos a associar a funcao coma variavel greeting
#Function<6.52032458/1 in :erl_eval.expr/5>    -- devolde isto que basicamente devolde

#assim se fizermos --iex> greeting.("Mars")
#e devolve "Hello, Mars!"


#iex> greeting = fn (name, gender, age) ->
#...>   "Hello, #{name}! I see you're #{gender} and you're #{age} years old."
#...> end
#Function<18.52032458/3 in :erl_eval.expr/5>


#iex> greeting.("Izzy", "Female", "30ish")
#"Hello, Izzy! I see you're Female and you're 30ish years old!"

# head -> hd
# tail -> tl

"iex> [1,2,3,4,5] -- [1,2,3]
[4,5]"
#iex>map = %{:foo => "bar", "hello" => :world}
#    %{:foo => "bar", "hello" => :world}
#iex>map[:foo]
#    "bar"
#iex>map["hello"]
#    :world



#iex>Enum.all?(["foo", "bar", "hello"], fn(s) -> String.length(s) == 3 end)
#false
#iex>Enum.all?(["foo", "bar", "hello"], fn(s) -> String.length(s) > 1 end)
#true


end
