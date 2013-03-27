class Historia < ActiveRecord::Base
  attr_accessible :detalle, :duracion, :estado, :meta_id
  
  belongs_to :meta, :class_name => "Meta", :foreign_key => "meta_id"
  
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
