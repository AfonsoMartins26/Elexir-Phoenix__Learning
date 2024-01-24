defmodule App do


  def main do  # tempo até ao proximo ano 
    time = DateTime.new!(Date.new!(2025, 1, 1), Time.new!(0,0,0,0), "Etc/UTC")
    time_till=NaiveDateTime.diff(time, DateTime.utc_now())
    IO.puts("Time till next new year: #{time_till}")

    days = div(time_till, 86400)
    horas =div(rem(time_till,86400),3600)
    mins = div(rem(time_till,3600),60)
    "Time till next year: #{days} days ,#{horas} hour, #{mins} minutes "

  end
end
