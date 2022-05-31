class ForeignKeysInvitationsTable < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key "invitations", "events"
    add_foreign_key "invitations", "users", column: "attendee_id"
  end
end
