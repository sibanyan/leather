# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(50)       not null
#  login_id        :string(50)       not null
#  password_digest :string(255)      not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_login_id  (login_id) UNIQUE
#

class User < ApplicationRecord
end
