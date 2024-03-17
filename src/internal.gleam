import gleam/io
import gleam/string
import gleam/list

fn is_positive_char_group(character: String, input: String) -> Bool {
  let valid_chars =
    string.slice(
      from: character,
      at_index: 1,
      length: string.length(character) - 2,
    )
    |> string.split("")
    |> list.filter(fn(c) { string.contains(does: input, contain: c) })

  case list.length(valid_chars) > 0 {
    True -> {
      io.println(
        "\u{1F600}"
        <> input
        <> " is included in "
        <> character
        <> " character group",
      )
    }
    False -> {
      io.println(
        "\u{1F600}"
        <> input
        <> " is not included in "
        <> character
        <> " character group",
      )
    }
  }
  list.length(valid_chars) > 0
}

pub fn is_negative_char_group(character: String, input: String) -> Bool {
  let valid_chars =
    string.slice(
      from: character,
      at_index: 2,
      length: string.length(character) - 2,
    )
    |> string.split("")
    |> list.filter(fn(c) { string.contains(does: input, contain: c) })

  case list.is_empty(valid_chars) {
    True -> {
      io.println(
        "\u{1F600}"
        <> input
        <> " is not included in "
        <> character
        <> " negative character group",
      )
    }
    False -> {
      io.println(
        "\u{1F600}"
        <> input
        <> " is included in "
        <> character
        <> " negative character group",
      )
    }
  }
  list.is_empty(valid_chars)
}

pub fn is_contain(character: String, input: String) -> Bool {
  let is_char_group =
    character
    |> string.starts_with("[")
    && string.ends_with(character, "]")

  let is_negative_char =
    character
    |> string.starts_with("[^")
    && string.ends_with(character, "]")

  case is_char_group {
    True ->
      case is_negative_char {
        True -> is_negative_char_group(character, input)
        False -> is_positive_char_group(character, input)
      }
    False -> {
      case string.contains(does: input, contain: character) {
        True -> {
          io.println("\u{1F600}" <> character <> " is included in " <> input)
        }
        False -> {
          io.println(
            "\u{1F600}" <> character <> " is not included in " <> input,
          )
        }
      }
      string.contains(does: input, contain: character)
    }
  }
}

pub fn is_digit_present(input: String) -> Bool {
  let available_digits =
    string.split(input, on: "")
    |> list.filter(fn(x) {
      ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
      |> list.contains(any: x)
    })

  case list.length(available_digits) {
    1 -> {
      io.println("\u{1F600} Digit is included in " <> input)
    }
    0 -> {
      io.println("\u{1F600} Digits are not included in " <> input)
    }
    _ -> {
      io.println("\u{1F600} Digits are included in " <> input)
    }
  }
  list.length(available_digits) > 0
}

pub fn is_alphanumeric_present(input: String) -> Bool {
  let all_alphanumeric_chars =
    input
    |> string.split(on: "")
    |> list.map(fn(c) {
      let assert [code] = string.to_utf_codepoints(c)
      code
    })
    |> list.filter(fn(code) {
      let value = string.utf_codepoint_to_int(code)
      { value >= 48 && value <= 57 }
      || { value >= 65 && value <= 90 }
      || { value >= 97 && value <= 122 }
    })
  case list.length(all_alphanumeric_chars) {
    1 -> {
      io.println("\u{1F600} Alphanumeric Character is included in " <> input)
    }
    0 -> {
      io.println("\u{1F600} No Alphanumeric Characters Found " <> input)
    }
    _ -> {
      io.println("\u{1F600} Alphanumeric Characters are included in " <> input)
    }
  }
  list.length(all_alphanumeric_chars) > 0
}
