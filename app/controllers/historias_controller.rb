class HistoriasController < ApplicationController
  # GET /historias
  # GET /historias.json
  def index
    @historias = Historia.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @historias }
    end
  end

  # GET /historias/1
  # GET /historias/1.json
  def show
    @historia = Historia.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @historia }
    end
  end

  # GET /historias/new
  # GET /historias/new.json
  def new
    @historia = Historia.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @historia }
    end
  end

  # GET /historias/1/edit
  def edit
    @historia = Historia.find(params[:id])
  end

  # POST /historias
  # POST /historias.json
  def create
    @historia = Historia.new(params[:historia])

    respond_to do |format|
      if @historia.save
        format.html { redirect_to @historia, notice: 'La nueva historia ha sido registrada.' }
        format.json { render json: @historia, status: :created, location: @historia }
      else
        format.html { render action: "new" }
        format.json { render json: @historia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /historias/1
  # PUT /historias/1.json
  def update
    @historia = Historia.find(params[:id])

    respond_to do |format|
      if @historia.update_attributes(params[:historia])
        format.html { redirect_to @historia, notice: 'Historia was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @historia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historias/1
  # DELETE /historias/1.json
  def destroy
    @historia = Historia.find(params[:id])
    @historia.destroy

    respond_to do |format|
      format.html { redirect_to historias_url }
      format.json { head :no_content }
    end
  end
end
