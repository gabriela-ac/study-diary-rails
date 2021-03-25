class AddFinalizedAtToStudyItem < ActiveRecord::Migration[6.1]
  def change
    add_column :study_items, :finalized_at, :datetime
  end
end
