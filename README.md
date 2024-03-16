# grepleam

[![Package Version](https://img.shields.io/hexpm/v/grepleam)](https://hex.pm/packages/grepleam)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/grepleam/)

```sh
gleam add grepleam
```
# Commands
- is_digit 'input string'
- is_alphanumeric 'input string'

# Examples
```sh
# Match a literal character
gleam run a 'apple' #😀a is included in apple

# Match digits
gleam run is_digit '340abc' #😀 Digits are included in 340abc

# Match alphanumeric characters
gleam run is_alphanumeric '??' #😀 No Alphanumeric Characters Found ??

# Positive Character Groups
gleam run [aeiou] 'gleam' #😀gleam is included in [aeiou] character group
```

# Make the escript executable
```sh
chmod +x ./grepleam
```

# Run the program
```sh
./grepleam is_digit '123abc'  # 😀 Digits are included in 123abc
```

Further documentation can be found at <https://hexdocs.pm/grepleam>.

## Development

```sh
gleam run   # Run the project
gleam test  # Run the tests
gleam shell # Run an Erlang shell
```
