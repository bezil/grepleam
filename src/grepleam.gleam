import gleam/io
import argv
import internal

pub fn main() {
  case argv.load().arguments {
    ["is_digit", input] -> internal.is_digit_present(input)
    ["is_alphanumeric", input] -> internal.is_alphanumeric_present(input)
    [char_group, input] -> internal.is_contain(char_group, input)
    _ -> {
      io.println("Usage: grepleam command \"input string\"")
      False
    }
  }
}
