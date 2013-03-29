class ProyectosController < ApplicationController
  # GET /proyectos
  # GET /proyectos.json
  def index
    @proyectos = Proyecto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @proyectos }
    end
  end

  # GET /proyectos/1
  # GET /proyectos/1.json
  def show
    @proyecto = Proyecto.find(params[:id])
    @metas = Meta.where('proyecto_id = ?',@proyecto.id ).paginate(:per_page => 10, :page => params[:page])
    respond_to do |format|
      format.html # show.html.erb
      format.js
    end
  end

  # GET /proyectos/new
  # GET /proyectos/new.json
  def new
    @proyecto = Proyecto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @proyecto }
    end
  end

  # GET /proyectos/1/edit
  def edit
    @proyecto = Proyecto.find(params[:id])
  end

  # POST /proyectos
  # POST /proyectos.json
  def create
    @proyecto = Proyecto.new(params[:proyecto])

    respond_to do |format|
      if @proyecto.save
        format.html { redirect_to @proyecto, notice: 'El nuevo proyecto ha sido registrado.' }
        format.json { render json: @proyecto, status: :created, location: @proyecto }
      else
        format.html { render action: "new" }
        format.json { render json: @proyecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /proyectos/1
  # PUT /proyectos/1.json
  def update
    @proyecto = Proyecto.find(params[:id])

    respond_to do |format|
      if @proyecto.update_attributes(params[:proyecto])
        format.html { redirect_to @proyecto, notice: 'El proyecto se ha actualizado.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @proyecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proyectos/1
  # DELETE /proyectos/1.json
  def destroy
    @proyecto = Proyecto.find(params[:id])
    @proyecto.destroy

    respond_to do |format|
      format.html { redirect_to proyectos_url }
      format.json { head :no_content }
    end
  end

 def consultar
   @proyectos = Proyecto.search(params[:titulo])
end

def alta_meta
  @proyecto = Proyecto.find(params[:id])
  @meta = Meta.new
 
  respond_to do |format|
     format.html # new.html.erb
     format.js
   end

end  

def editar_meta
  @meta = Meta.find(params[:id])
  @proyecto = Proyecto.find(@meta.proyecto_id)
  respond_to do |format|
     format.html # new.html.erb
     format.js
   end

end  


def cancelar_form_meta

   respond_to do |format|
     format.html # new.html.erb
     format.js
   end
 end


end

