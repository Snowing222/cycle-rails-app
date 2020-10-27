class ProductsController < ApplicationController
    def new
        @seasons = ["SUM2020","FALL2020","WINTER2020","SUMMER2021"]
        @product = Product.new
        @product.production_partner=ProductionPartner.first
        @design_partners = DesignPartner.all
        @manufacturer_partners = ManufacturerPartner.all
       

    end

    def create
      
        @seasons = ["SUM2020","FALL2020","WINTER2020","SUMMER2021"]
        @product = Product.new(product_params)
    
        if @product.save
            redirect_to @product
        else
            render 'new'
        end

    end

    def show
        @product = Product.find(params[:id])
        @manufacturer_partner = ManufacturerPartner.find(@product.manufacturer_partner_id)
        @production_partner = ProductionPartner.find(@product.production_partner_id)
        @design_partner = DesignPartner.find(@product.design_partner_id)
    

    end

    
    private
    def product_params
        params.require(:product).permit(:season, :style_number, :image_url, :description, :status, :deadline, :manufacturer_partner_id, :design_partner_id, :production_partner_id)
    end
 
end
