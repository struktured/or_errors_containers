module Std =
struct
  module Monad = Or_errors.Std.Monad
  module Result = Containers_result
  module Error = Containers_error
  module Or_error = Containers_or_error
end
