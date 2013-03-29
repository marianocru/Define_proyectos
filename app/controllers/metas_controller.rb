class MetasController < ApplicationController
  # GET /metas
  # GET /metas.json
  def index
    @metas = Meta.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @metas }
    end
  end

  # GET /metas/1
  # GET /metas/1.json
  def show
    @meta = Meta.find(params[:id])
    @historias = Historia.where('meta_id = ?',@meta.id ).paginate(:per_page => 10, :page => params[:page])
    respond_to do |format|
      format.html # show.html.erb
      format.js
    
    end
  end

  # GET /metas/new
  # GET /metas/new.json
  def new
    @meta = Meta.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @meta }
    end
  end

  # GET /metas/1/edit
  def edit
    @meta = Meta.find(params[:id])
    @proyecto = Proyecto.find(@meta.proyecto_id)
  end

  # POST /metas
  # POST /metas.json
  def create
    @meta = Meta.new(params[:meta])

    respond_to do |format|
      if @meta.save
       @metas = Meta.where('proyecto_id = ?',@meta.proyecto_id).paginate(:per_page => 10, :page => params[:page])
        format.html { redirect_to @meta, notice: 'La Meta ha sido registrada.' }
        format.js
      else
        format.html { render action: "new" }
       format.js
      end
    end
  end

  # PUT /metas/1
  # PUT /metas/1.json
  def update
    @meta = Meta.find(params[:id])

    respond_to do |format|
      if @meta.update_attributes(params[:meta])
          @metas = Meta.where('proyecto_id = ?',@meta.proyecto_id).paginate(:per_page => 10, :page => params[:page])
        format.html { redirect_to @meta, notice: 'La Meta ha sido actualizada.' }
        format.js
      else
        format.html { render action: "edit" }
        format.js
      end
    end
  end

  # DELETE /metas/1
  # DELETE /metas/1.json
  def destroy
    @meta = Meta.find(params[:id])
    @meta.destroy

    respond_to do |format|
      format.html { redirect_to metas_url }
      format.js
    end
  end
  
  def alta_historia
    @meta = Meta.find(params[:id])
    @historia = Historia.new
 
    respond_to do |format|
       format.html # new.html.erb
       format.js
     end

  end  

  def editar_historia
    @historia = Historia.find(params[:id])
    @meta = Meta.find(@historia.meta_id)
    respond_to do |format|
       format.html # new.html.erb
       format.js
     end

  end  


  def cancelar_form_historia

     respond_to do |format|
       format.html # new.html.erb
       format.js
     end
   end  
  
  
end
