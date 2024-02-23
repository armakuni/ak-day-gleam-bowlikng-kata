import gleeunit
import gleeunit/should
import ak_day_play_gleam

pub fn main() {
  gleeunit.main()
}

// gleeunit test functions end in `_test`
pub fn gutter_ball_game_test() {
  ak_day_play_gleam.score([
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  ])
  |> should.equal(0)
}

pub fn score_of_1_test() {
  ak_day_play_gleam.score([
    1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  ])
  |> should.equal(1)
}

pub fn score_of_1_not_in_first_frame_test() {
  ak_day_play_gleam.score([
    0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  ])
  |> should.equal(1)
}

pub fn score_of_2_with_two_singles_test() {
  ak_day_play_gleam.score([
    0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  ])
  |> should.equal(2)
}

pub fn score_of_3_with_two_non_zero_rolls_test() {
  ak_day_play_gleam.score([
    0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  ])
  |> should.equal(3)
}

pub fn score_spare_test() {
  ak_day_play_gleam.score([
    6, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  ])
  |> should.equal(12)
}

pub fn score_spare_test_doubling_two_test() {
  ak_day_play_gleam.score([
    6, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  ])
  |> should.equal(14)
}

pub fn score_strike_doubles_the_next_frame_test() {
  ak_day_play_gleam.score([
    10, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  ])
  |> should.equal(14)
}

pub fn score_adds_up_to_eleven_but_no_spare_test() {
  ak_day_play_gleam.score([
    6, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0,
  ])
  |> should.equal(11)
}
