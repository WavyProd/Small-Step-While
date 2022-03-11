load harness

@test "mytest-1" {
  check 'if 0 < -1 then x := 99 - 99 else y := 7 + 19' '⇒ y := (7+19), {}
⇒ skip, {y → 26}'
}

@test "mytest-2" {
  check 'if ¬ true then x := 71 else x := 96' '⇒ x := 96, {}
⇒ skip, {x → 96}'
}

@test "mytest-3" {
  check 'while false do skip' '⇒ skip, {}'
}

@test "mytest-4" {
  check 'if ( a < b ) then c := 9 else c := 5' '⇒ c := 5, {}
⇒ skip, {c → 5}'
}

@test "mytest-5" {
  check 'z := 1 * 99' '⇒ skip, {z → 99}'
}
