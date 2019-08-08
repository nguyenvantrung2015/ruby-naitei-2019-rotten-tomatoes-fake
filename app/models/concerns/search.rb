module Search
  extend ActiveSupport::Concern

  class_methods do
    def cosine string1, string2
      word1 = string1.downcase.split("")
      word2 = string2.downcase.split("")

      set = word1 | word2
      afreq = count(word1)
      bfreq = count(word2)

      av = set.map{|x| afreq.fetch(x, 0)}
      bv = set.map{|x| bfreq.fetch(x, 0)}

      dot(av, bv) / (mag(av) * mag(bv).to_f)
    end

    def dot vector1, vector2
      vector1.zip(vector2).map{|m, n| m * n}.reduce(:+)
    end

    def mag string1
      Math.sqrt(string1.map{|x| x**2}.reduce(:+))
    end

    def count items
      items.group_by{|x| x}.map{|x, xs| [x, xs.size]}.to_h
    end

    def search keyword
      data = load_all
      new_data = construct_data_new(data, keyword)
      sorted = new_data.sort_by(&:rank)
      tv_shows_id = sorted.reverse.pluck(:item).uniq
      list_search tv_shows_id
    end

    def construct_data_new old_data, keyword
      new_data = []
      item_str = Struct.new(:rank, :item)
      old_data.each do |item|
        cosine_name = cosine(keyword, item.name)
        cosine_f_name = cosine(keyword, item.film_name)
        cosine_release = cosine(keyword, item.release_date.to_s.split("-")[0])
        rank_max = [cosine_name, cosine_f_name, cosine_release].max
        new_data.push(item_str.new(rank_max, item[:id])) unless
            rank_max <= Settings.limit_cosine
      end
      new_data
    end
  end
end
