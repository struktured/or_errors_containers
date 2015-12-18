open Or_errors.Std

module Make(Error:Or_errors.Error.S) : Or_errors.Or_error.S with module Result = Result = struct
  module Impl = Or_errors.Or_error.Of_result (Result)(Error)
  module Result = Result
  include (Impl : OR_ERROR with module Result := Result)
end
