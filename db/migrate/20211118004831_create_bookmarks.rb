# frozen_string_literal: true

class CreateBookmarks < ActiveRecord::Migration[6.1]
  def change
    create_table :bookmarks do |t|
      t.integer :id
      t.string :comment
      t.integer :movie_id
      t.integer :list_id

      t.timestamps
    end
  end
end