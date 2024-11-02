class UpdateFunctionScrubEmailToVersion3 < ActiveRecord::Migration[7.1]
  def change
    update_function :scrub_email, version: 3, revert_to_version: 2
  end
end
