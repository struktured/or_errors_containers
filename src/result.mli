open Or_errors.Std

include module type of CCError
include RESULT with type ('ok, 'err) t := ('ok, 'err) t
