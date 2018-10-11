class Deuda < ApplicationRecord
  belongs_to :municipio

  register_currency :cop

  monetize :value_centavos, as: "value"
end
