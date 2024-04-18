defmodule MpesaTrials do
  def hello do
    HTTPoison.start()
    HTTPoison.get!("https://www.thunderclient.com/welcome")
  end
end
