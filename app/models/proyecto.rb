class Proyecto < ActiveRecord::Base
  attr_accessible :descripcion, :objetivo, :resultado, :titulo, :estado


  def self.search(titulo)
      if !(titulo.blank?)
        where('titulo like ?', "%#{titulo}%")
      else
        scoped
      end
  end

end
