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
end




