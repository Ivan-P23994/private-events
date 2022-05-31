class AddAtendeeColumnToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :attendee_id, :integer
  end
end
