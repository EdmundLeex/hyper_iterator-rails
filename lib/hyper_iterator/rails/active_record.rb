module ActiveRecord
  class Result
    def each!
      hash_rows.each! { |row| yield row }
    end
  end
end