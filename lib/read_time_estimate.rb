def read_time_estimate(word_count)
  if word_count == nil then fail 'Expected number, received nill' end
  word_count.to_f / 200
end