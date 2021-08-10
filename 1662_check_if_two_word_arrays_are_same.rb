# @param {String[]} word1
# @param {String[]} word2
# @return {Boolean}
def array_strings_are_equal(word1, word2)
  word1_result = ""
  word2_result = ""

  word1.each do |word|
    word1_result += word
  end

  word2.each do |word|
    word2_result += word
  end

  word1_result === word2_result
end