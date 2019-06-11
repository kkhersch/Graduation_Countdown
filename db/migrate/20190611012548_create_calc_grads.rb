class CreateCalcGrads < ActiveRecord::Migration[5.2]
  def change
    create_table :calc_grads do |t|

      t.timestamps
    end
  end
end
