import gleam/io
import gleam/int
import gleam/result
import gleam/list

pub fn main() {
  io.println("Hello from ak_day_play_gleam!")
}

pub fn score(rolls) {
  let frames = list.range(0, 9)
  int.sum(list.map(frames, fn(x) { frame_score(x, rolls) }))
}

fn frame_score(frame_number, rolls) {
  let initial_index = 2 * frame_number
  case
    result.unwrap(list.at(rolls, initial_index), 0)
    + result.unwrap(list.at(rolls, initial_index + 1), 0)
  {
    10 -> 10 + result.unwrap(list.at(rolls, initial_index + 2), 0)
    value -> value
  }
}
