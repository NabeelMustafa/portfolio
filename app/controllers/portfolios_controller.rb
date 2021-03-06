class PortfoliosController < ApplicationController

  layout "portfolio"
  access all: [:show, :index], user: { except: [:destroy, :new, :create, :upadte, :edit]}, site_admin: :all

  def index
    @portfolio_items = Portfolio.order(position: :asc)
    @blog = Blog.order(created_at: :asc).last
    @body = @blog.body.split(" ").each_with_object("") {|x,ob| break ob unless (ob.length + " ".length + x.length <= 70);ob << (" " + x)}.strip
    @title = "Nabeel Mustafa | Portfolio"
  end

  def new
    @portfolio_item = Portfolio.new
    3.times do
      @portfolio_item.technologies.build
      puts
    end
  end

  def show
    @portfolio_item = Portfolio.find(params[:id])
  end
  def create
    @portfolio_item = Portfolio.new(portfolio_params)
    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to :portfolios, notice: 'Item was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end

  def update
    @portfolio_item = Portfolio.find(params[:id])
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to :portfolios, notice: 'Item was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @portfolio_item = Portfolio.find(params[:id])
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to :portfolios, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body, :main_image, technologies_attributes: [:name, :id, :_destroy])
  end
end
