open Or_errors.Std
module Result = Containers_result
module Make(Error:Error.S) :
  Or_error.S with module Result = Result = struct
  module Fail =
  struct
    type 'a t = ('a,Error.t) Result.t
    let fail = Result.fail
  end
  module Impl = Or_error.Showable.Make(Result)(Error)(Fail)
  module Result = Result
  include (Impl : OR_ERROR with module Result := Result)
end
