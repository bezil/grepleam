import gleeunit
import gleeunit/should
import internal

pub fn main() {
  gleeunit.main()
}

pub fn is_contain_test() {
  internal.is_contain("a", "apple")
  |> should.equal(True)
  internal.is_contain("d", "banana")
  |> should.equal(False)
  internal.is_contain("[To]", "Truck")
  |> should.equal(True)
  internal.is_contain("[abcd]", "zoo")
  |> should.equal(False)
}

pub fn is_digit_present_test() {
  internal.is_digit_present("SWIFTMT103")
  |> should.equal(True)
  internal.is_digit_present("money")
  |> should.equal(False)
}

pub fn is_alphanumeric_present_test() {
  internal.is_alphanumeric_present("Machine!23")
  |> should.equal(True)
  internal.is_alphanumeric_present("!@#")
  |> should.equal(False)
}
