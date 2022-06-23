class User
    attr_accessor :name, :address, :email
    def profile
        "#{name}(#{address})"
    end
end

class MyClass
    def method_1
        @number = 100
    end
    def method_2
        @number
    end
end

number = 1
if number == 1
    puts '整数は1です'
elsif number == 2
    puts '整数は2です'    
else
    puts '整数は1や2以外です'
end

number = 100
message = if number > 50
    puts "numberは50より大きいです"
else
    puts "numberは50以下です"
end

age = 16
unless age >= 20
    puts "未成年者には酒類を提供できません！"
else
    puts "おすすめのワインがあります"
end