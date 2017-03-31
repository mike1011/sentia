class Product < ActiveRecord::Base

require 'csv'


    
##class methods    
class  << self
    
  def import(file)
    CSV.foreach(file.path, headers: true) do |row|

      product_hash = row.to_hash # exclude the field
      product = Product.where(id: product_hash["id"])

      if product.count == 1
        product.first.update_attributes(product_hash)
      else
        Product.create!(product_hash)
      end # end if !product.nil?
    end # end CSV.foreach
  end # end self.import(file)
    
    
    
end
   
    
end
