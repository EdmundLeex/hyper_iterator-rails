module ActiveRecord
  class Result
    def each!
      binding.pry
      hash_rows.each! { |row| yield row }
    end
  end
end