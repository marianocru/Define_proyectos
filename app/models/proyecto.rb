class Proyecto < ActiveRecord::Base
  attr_accessible :descripcion, :objetivo, :resultado, :titulo, :estado

  validates :titulo,:descripcion,
           :presence => {:message=>"campo requerido."}
  validates :descripcion,
            :presence => {:message=>"campo requerido."}

  def self.search(titulo)
      if !(titulo.blank?)
        where('titulo like ?', "%#{titulo}%")
      else
        scoped
      end
  end

end
