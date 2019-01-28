class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
    end

    100.times do
      User.create(name: Faker::Name.name, email: Faker::Internet.email)
    end
  end
end
