type 'a error_or = ('a, string) Result.result

val pp_error_or
  : (Format.formatter -> 'a -> unit)
  -> Format.formatter
  -> 'a error_or
  -> unit

val ( >>= ) : 'a error_or -> ('a -> 'b error_or) -> 'b error_or
val ( >|= ) : 'a error_or -> ('a -> 'b) -> 'b error_or
val map_bind : ('a -> 'b error_or) -> 'b list -> 'a list -> 'b list error_or

module List : (module type of List)
module String : (module type of String)
module Bytes : (module type of Bytes)
module Int32 : (module type of Int32)
module Int64 : (module type of Int64)
module Nativeint : (module type of Nativeint)
module Array : (module type of Array)
module Result : sig
  type ('a, 'b) result = ('a, 'b) Result.result =
    | Ok of 'a
    | Error of 'b
end
