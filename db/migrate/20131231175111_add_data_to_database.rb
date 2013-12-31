class AddDataToDatabase < ActiveRecord::Migration
  def change
    CoffeeType.create(:bean_name=>"Arusha",:discription=>"either a Typica variety or a French Mission.",:location=>"Arabica")
    CoffeeType.create(:bean_name=>"Bergendal, Sidikalang",:discription=>"either a Typica variety or a French Mission.",:location=>"Arabica")
    CoffeeType.create(:bean_name=>"Blue Mountain",:discription=>"either a Typica variety or a French Mission.",:location=>"Arabica")    
    CoffeeType.create(:bean_name=>"Bourbon",:discription=>"either a Typica variety or a French Mission.",:location=>"Arabica")
    CoffeeType.create(:bean_name=>"Catuai",:discription=>"either a Typica variety or a French Mission.",:location=>"Arabica")
    CoffeeType.create(:bean_name=>"Caturra",:discription=>"either a Typica variety or a French Mission.",:location=>"Arabica")    
    CoffeeType.create(:bean_name=>"Charrieriana",:discription=>"either a Typica variety or a French Mission.",:location=>"Arabica")
    CoffeeType.create(:bean_name=>"Colombian",:discription=>"either a Typica variety or a French Mission.",:location=>"Arabica")
    CoffeeType.create(:bean_name=>"Ethiopian Harar",:discription=>"either a Typica variety or a French Mission.",:location=>"Arabica")    
    CoffeeType.create(:bean_name=>"Ethiopian Sidamo",:discription=>"either a Typica variety or a French Mission.",:location=>"Arabica")
    CoffeeType.create(:bean_name=>"Ethiopian Yirgacheffe",:discription=>"either a Typica variety or a French Mission.",:location=>"Arabica")
    CoffeeType.create(:bean_name=>"French Mission",:discription=>"either a Typica variety or a French Mission.",:location=>"Arabica")            
    CoffeeType.create(:bean_name=>"Guadeloupe Bonifieur",:discription=>"either a Typica variety or a French Mission.",:location=>"Arabica")
    CoffeeType.create(:bean_name=>"Hawaiian Kona",:discription=>"either a Typica variety or a French Mission.",:location=>"Arabica")
    CoffeeType.create(:bean_name=>"Pacas",:discription=>"either a Typica variety or a French Mission.",:location=>"Arabica")    
    CoffeeType.create(:bean_name=>"Mocha",:discription=>"either a Typica variety or a French Mission.",:location=>"Arabica")
    CoffeeType.create(:bean_name=>"Maragogype",:discription=>"either a Typica variety or a French Mission.",:location=>"Arabica")
    CoffeeType.create(:bean_name=>"Java",:discription=>"either a Typica variety or a French Mission.",:location=>"Arabica")           
  end
end
