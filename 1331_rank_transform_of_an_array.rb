# @param {Integer[]} arr
# @return {Integer[]}
def array_rank_transform(arr)
    word_rankings = {}
    
    arr.uniq.sort.each_with_index do |num, i|
        word_rankings[num] = i + 1
    end
        
    rankings = []
    used_rankings = 0
    
    arr.each do |num|
        rankings << word_rankings[num]
    end
    
    rankings
end
