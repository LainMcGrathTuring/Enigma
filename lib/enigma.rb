class Enigma

  attr_reader :character_set, :offset, :key_generator

  def initialize
    @character_set = ("a".."z").to_a << " "
    @offset = Offset.new
    @key_generator = KeyGenerator.new
  end

  def shift_amount
    offset = @offset.offset_amount
    key_gen = @key_generator.random_key_sets
    a = offset[0] + key_gen[0]
    b = offset[1] + key_gen[1]
    c = offset[2] + key_gen[2]
    d = offset[3] + key_gen[3]
    shifts = [a, b, c, d]
  end

  def rotate_shift_amount
    shift_amount.rotate!
  end

  def characters_to_ord
    @character_set.map { |letter| letter.ord }.rotate!
  end

  def message_encrypt(message, key)
    message_to_ord = message.downcase.chars.map { |letter| letter.ord }
    shifted_message = message_to_ord.map do |letter|
      if 
      letter + key
      require "pry"; binding.pry
    end
    joined_message = shifted_message.map { |letter| letter.chr }.join
      require "pry"; binding.pry
  end

  def encrypt(message)
    encryption_list = {}
    encryption_list[:encryption] = message
    encryption_list[:key] = @key_generator.generated_key
    encryption_list[:date] = @offset.find_date
    encryption_list
  end
end
