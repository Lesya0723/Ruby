class Department
  attr_accessor :name
  attr_reader :phone
  
  def initialize (name, phone)
    @name = name
    @duty = duty
    self.phone = phone
  end
  
    def to_s
    "\nИмя: #{@name}; Телефон : #{@phone}; \nОбязанности : \n#{duty}"
  end
  
  #Метод вывода
  def print_duty
    w = ""
    @duty.each_index { |i| w += "#{i}) #{@duty[i]}\n" }
    w
  end
  
#Метод добавления обязанности
  def duty_add(value)
    @duty.append(value)
  end
  
  #Метод выделения обязанности
  def just_duty(index)
    @index = index
  end
  
#Метод удаления обязанности
  def delete_duty
    @duty.delete(@post[@index])
    @index = -1
  end
  #Метод получить текст выделенной обязанности
  def text_duty
    @duty[@index]
  end
  
#Метод заменить текст выделенной обязанности
  def change_duty(value)
    @duty[@index] = value
  end
  
    def phone_number=(new_phone_number)
    begin
      @phone_number = Department.get_rus_number new_phone_number
    rescue => error  
      error.message
    end
  end 
  
  def self.form_rus_number(new_number)
    number = new_number.scan(/\d/)

    " /^((\+7|7|8)+([0-9]){10})$/.match(phone).to_s
  end
  end

  def self.get_rus_number(new_number)
    is_rus_number?(new_number) ? form_rus_number(new_number): raise(ArgumentError)
  end
  
  def main
  person1 = Department.new("Олеся", "89549270306", "Работать целыми сутками")
  person2 = Department.new("Наталья", "89069852101","Отдыхать" )

#Добавление
person1.duty_add("TRG")
puts person1
#Удаление
ask_duty(person1)
 person1.delete_duty
puts  person1
#Вывести выделенную обязанность
 person1.just_duty(0)
puts  person1.text_duty
#Изменить выделенную обязанность
 person1.just_post(1)
 person1.change_dy("Павел")
end

if __FILE__ == $0
    main
end
end

