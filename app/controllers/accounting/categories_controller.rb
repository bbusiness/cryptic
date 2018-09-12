class Accounting::CategoriesController < ApplicationController
  before_action :set_accounting_category, only: [:show, :edit, :update, :destroy]
  def index; @accounting_categories = Accounting::Category.all end

  def show; end

  def new

    @accounting_category = Accounting::Category.new(ancestry: params[:parent_id])
  end

  def edit

  end

  def set_category

  end

  def create
    accounting_category_params[:ancestry]= nil if accounting_category_params[:ancestry].empty?

    @accounting_category = Accounting::Category.new(accounting_category_params)
    puts @accounting_category.inspect
    respond_to do |format|
      if @accounting_category.save
        format.html { redirect_to @accounting_category, notice: "Succes!"}
        format.json {render :snow, status: :created, location: @accounting_category}
      else
        format.html {render :new}
        format.json {render json: @accounting_category.errors, status: :unprocessable_entity}
      end
    end
  end

  def update
    respond_to do |format|
      if @accounting_category.update(accounting_category_params)
        format.html { redirect_to @accounting_category, notice: 'Succes!' }
        format.json { render :show, status: :ok, location: @accounting_category }
      else
        format.html { render :edit }
        format.json { render json: @accounting_category.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @accounting_category.destroy
    respond_to do |format|
      format.html { redirect_to accounting_categories_url, notice: 'Succes!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accounting_category
      @accounting_category = Accounting::Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accounting_category_params
      params.require(:accounting_category).permit!
    end
end
