class CirclesController < ApplicationController
  before_action :set_circle, only: %i[ show edit update destroy ]

  # GET /circles or /circles.json
  def index
    @circles = Circle.all
  end

  # GET /circles/1 or /circles/1.json
  def show
  end

  # GET /circles/new
  def new
    @circle = Circle.new
  end

  # GET /circles/1/edit
  def edit
  end

  # POST /circles or /circles.json
  def create
    @circle = Circle.new(circle_params)

    respond_to do |format|
      if @circle.save
        format.html { redirect_to @circle, notice: "Circle was successfully created." }
        format.json { render :show, status: :created, location: @circle }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @circle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /circles/1 or /circles/1.json
  def update
    respond_to do |format|
      if @circle.update(circle_params)
        format.html { redirect_to @circle, notice: "Circle was successfully updated." }
        format.json { render :show, status: :ok, location: @circle }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @circle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /circles/1 or /circles/1.json
  def destroy
    @circle.destroy!

    respond_to do |format|
      format.html { redirect_to circles_path, status: :see_other, notice: "Circle was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_circle
      @circle = Circle.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def circle_params
      params.expect(circle: [ :slug, :name, :description ])
    end
end
