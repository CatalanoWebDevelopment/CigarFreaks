require_relative 'CigarFreaksEnvironment.rb'

class Cigars
    attr_accessor :tasting_note, :ring_gauge, :body,
    :size, :length, :filler, :binder, :wrapper, :price
    
    def initialize(tasting_note: nil, ring_gauge: nil, body: nil, size: nil, length: nil, filler: nil, binder: nil, wrapper: nil, price: nil)
        @tasting_note = tasting_note
        @ring_gauge = ring_gauge
        @body = body
        @size = size
        @length = length
        @filler = filler
        @binder = binder
        @wrapper = wrapper
        @price = price
    end
    
end