class AlumnosController < ApplicationController

  # GET /alumnos
  # GET /alumnos.json
  def index
    @alumnos = Alumno.all

    render json: @alumnos.as_json(include: :persona)
  end

  # GET /alumnos/1
  # GET /alumnos/1.json
  def show
    @alumno = Alumno.find(params[:id])

    render json: @alumno.as_json(include: :persona)
  end

  # GET /alumnos/new
  # GET /alumnos/new.json
  def new
    @alumno = Alumno.new

    render json: @alumno.as_json(include: :persona)
  end

  # POST /alumnos
  # POST /alumnos.json
  def create
    @alumno = Alumno.new(params[:alumno])

    respond_to do |format|
      if @alumno.save
        render json: @alumno.as_json(include: :persona), status: :created, location: @alumno
      else
        render json: @alumno.errors, status: :unprocessable_entity
      end
    end
  end

  # PUT /alumnos/1
  # PUT /alumnos/1.json
  def update
    @alumno = Alumno.find(params[:id])

    respond_to do |format|
      if @alumno.update_attributes(params[:alumno])
        head :no_content
      else
        render json: @alumno.errors, status: :unprocessable_entity
      end
    end
  end

  # DELETE /alumnos/1
  # DELETE /alumnos/1.json
  def destroy
    @alumno = Alumno.find(params[:id])
    @alumno.destroy

    head :no_content
  end
end
