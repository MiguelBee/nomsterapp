class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    
    create_table :photos do |t|
      
      t.text :caption
      t.interger :place_id
      t.timestamps
    end
  end
end
