class Meta < ActiveRecord::Base
  attr_accessible :detalle, :estado, :proyecto_id
  
  belongs_to :proyecto, :class_name => "Proyecto", :foreign_key => "proyecto_id"
  
  validates :detalle,
           :presence => {:message=>"campo requerido."}
  

end
