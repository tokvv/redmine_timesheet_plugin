class CreateEnumPrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.references :enumerations
      t.float :price
    end
    execute <<-SQL
          ALTER TABLE `prices` ADD INDEX ( `enumerations_id` ) ;
    SQL
  end
end
