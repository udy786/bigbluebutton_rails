class BigbluebuttonRailsTo230 < ActiveRecord::Migration
  def self.up
    rename_column :bigbluebutton_rooms, :param, :slug
    rename_column :bigbluebutton_servers, :param, :slug
  end

  def self.down
    rename_column :bigbluebutton_servers, :slug, :param
    rename_column :bigbluebutton_rooms, :slug, :param
  end
end
