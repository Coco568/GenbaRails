class PricedObject
    def total_price
        price * Tax.rate
    end
    def price
        raise NotImplementedError#機能が実装されていないことを示すエラー
    end
end
class Product < PricedObject
    attr_accessor :price
end
class OrderedItem < PricedObject
    attr_accessor :unit_price, :volume
    def price
        unit_price * volume
    end
end

class Book
    def title
        '本のタイトル'
    end
end
class Magazine < Book
    def title
        '雑誌のタイトル'
    end
end

class BaseTask
    def puts_message
        puts 'BaseTaskのタイトル'
    end
end
class Task < BaseTask
    def puts_message
        super
        puts 'Taskのタイトル'
    end
end

module Chatting
    def chat
        "hello"
    end
end
module Weeping
    def weep
        "しくしく"
    end
end
class Human
    include Chatting
    include Weeping
end

module PriceHolder
    def total_price
        price * Tax.rate
    end
end
class Product
    include PriceHolder
    attr_accessor :price
end
class OrderedItem
    include PriceHolder
    attr_accessor :unit_price, :volume
    def price
        unit_price * volume
    end
end