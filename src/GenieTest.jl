module GenieTest

using Genie, Logging, LoggingExtras

function main()
  Base.eval(Main, :(const UserApp = GenieTest))

  Genie.genie(; context = @__MODULE__)

  Base.eval(Main, :(const Genie = GenieTest.Genie))
  Base.eval(Main, :(using Genie))
end

end
