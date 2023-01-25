class AddSlugToCandidate < ActiveRecord::Migration[6.1]
  def change
    add_column :candidates, :slug, :string
  end
end
