class AddSensitiveDataComments < ActiveRecord::Migration[7.1]
  def change
    safety_assured do
      execute <<-SQL
        COMMENT ON COLUMN users.email IS 'sensitive_data=true';
        COMMENT ON COLUMN users.first_name IS 'sensitive_data=true';
        COMMENT ON COLUMN users.last_name IS 'sensitive_data=true';
        COMMENT ON COLUMN users.drivers_license_number IS 'sensitive_data=true';
      SQL
    end
  end
end
