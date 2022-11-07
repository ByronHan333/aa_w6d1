class CreateTables < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username, null: false, unique: true

      t.timestamps
    end

    create_table :polls do |t|
      t.references :user, null: false, foreign_key: {to_table: :users}
      t.string :title

      t.timestamps
    end

    create_table :questions do |t|
      t.text :text, null: false
      t.references :poll, null: false, foreign_key: {to_table: :polls}

      t.timestamps
    end

    create_table :answer_choices do |t|
      t.text :text, null: false
      t.references :question, null: false, foreign_key: {to_table: :questions}


      t.timestamps
    end

    create_table :responses do |t|
      t.references :answer_choice, null: false, foreign_key: {to_table: :answer_choices}
      t.references :user, null: false, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
