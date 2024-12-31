require 'active_record/migration'

ActiveRecord::Migration.validate_check_constraint :trips, name: 'rating_check'
ActiveRecord::Migration.validate_check_constraint :trips, name: 'chk_rails_4743ddc2d2'
