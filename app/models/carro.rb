class Carro < ApplicationRecord
	validates :matricula, presence: true,
                    length: { minimum: 7 }
    validates :modelo_car,:marca_car ,presence: true
    validates :reprobo, inclusion: { in: [true, false] }
end
