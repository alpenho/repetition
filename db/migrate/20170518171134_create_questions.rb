class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
    	t.text		:content
    	t.string	:answer
    	t.integer	:excercise_id

      t.timestamps
    end
  end
end
