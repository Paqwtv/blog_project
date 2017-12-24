class PoolValidator < ActiveModel::EachValidator
  def validate_each(record, attr, value)
    p record
    record.errors.add(attr, 'Название должно начинаться с заглавной буквы') if
    value =~ /\A[[:lower:]]/
    
    post_name = value.split(' ')
    record.errors.add(attr, 'Название должно состоять как минимум из двух слов') if
    post_name.size < 2

    post_name.each do |word|
      record.errors.add(attr, 'Каждое слово должно состоять из двух символов') if
      word.size < 2
    end

    record.errors.add(attr, 'Название должно содержать точку') unless
    value =~ /\./
  end
end