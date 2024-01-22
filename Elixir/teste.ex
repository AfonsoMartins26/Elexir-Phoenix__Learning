defmodule Teste do
  use Application
  alias UUID



  def start(_type,_args) do 
    IO.puts(UUID.uuid4())
    Supervisor.start_link([], strategy: :one_for_one)
  end

    def hello do
    :world
  end

end
