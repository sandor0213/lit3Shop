class ProductsController < ApplicationController
	before_action :authenticate_user!
	before_action :find_product, only: [:show, :edit, :update, :destroy]

def index
	@products = Product.all
end

def new
	@product = Product.new
end

def create
@product = current_user.products.build(product_params)
	if @product.save
		redirect_to root_path
	end
end

def show
end

def edit
end

def update
	 @product.update(product_params)
     if @product.save
       redirect_to product_path(@product.id)
     end
end

def destroy
	@product.destroy
	redirect_to root_path
end


def find_product
	
	 @product = Product.find_by(id: params[:id])
end

private 
def product_params
	params.require(:product).permit(:user_id,:title,:description,:price)
end


end
