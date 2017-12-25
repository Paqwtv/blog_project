# custom validates for Users, Posts and Categories
class PoolValidator < ActiveModel::EachValidator
  def validate_each(record, attr, value)
    words = value.split(' ')
    if record.class == User
      words.each do |word|
        record.errors.add(attr, 'Ваше имя должно начинаться с заглавной буквы') if
        word =~ /\A[[:lower:]]/
      end
    end

    record.errors.add(attr, 'Название должно начинаться с заглавной буквы') if
    value =~ /\A[[:lower:]]/

    record.errors.add(attr, 'Название должно состоять как минимум из двух слов') if
    words.size < 2

    words.each do |word|
      record.errors.add(attr, 'Каждое слово должно состоять из двух символов') if
      word.size < 2
    end

    record.errors.add(attr, 'Название должно содержать точку') unless
    value =~ /\./
  end
end
