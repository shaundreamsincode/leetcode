# @param {String} paragraph
# @param {String[]} banned
# @return {String}
def most_common_word(paragraph, banned)
  return paragraph if paragraph.length < 2

  word_counts = Hash.new(0)
  formatted_paragraph = paragraph.gsub(/((?:\d\s*){1,3})/,"")
  formatted_paragraph = formatted_paragraph.gsub(","," ")
  formatted_paragraph = formatted_paragraph.gsub("!"," ")
  formatted_paragraph = formatted_paragraph.gsub("."," ")
  formatted_paragraph = formatted_paragraph.gsub("?"," ")
  formatted_paragraph = formatted_paragraph.gsub(";"," ")
  formatted_paragraph = formatted_paragraph.gsub("'"," ")

  formatted_paragraph = formatted_paragraph.strip

  formatted_paragraph.split(" ").each do |word|
    word.downcase!
    next if banned.include?(word)
    word_counts[word] += 1
  end

  word_counts.max_by{|k,v| v}[0]
end
