class Fixnum
  define_method(:prime) do
  input_array = (1..self).to_a
  counter = 2

  until counter == self

  input_array.delete_if{|number| (number/counter != 1) && (number%counter==0)}
  counter = counter + 1

    end
    input_array
  end
end
