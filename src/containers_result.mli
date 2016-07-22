open Or_errors.Std

include module type of CCError
include Or_errors.Result.SHOWABLE with type ('ok, 'err) t := ('ok, 'err) t
