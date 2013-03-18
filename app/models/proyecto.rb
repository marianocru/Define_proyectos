class Proyecto < ActiveRecord::Base
  attr_accessible :descripcion, :objetivo, :resultado, :titulo, :estado
end
