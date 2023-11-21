class AddColumnToReservationDateLocation < ActiveRecord::Migration[7.1]
  def change
    add_column :reservations, :start_location, :date
    add_column :reservations, :end_location, :date
  end
end
