class Historia < ActiveRecord::Base
  attr_accessible :detalle, :duracion, :estado
  
  validates :detalle,
           :presence => {:message=>"campo requerido."}
  
  def self.search(detalle)
      if !(detalle.blank?)
        where('detalle like ?', "%#{detalle}%")
      else
        scoped
      end
  end
end
