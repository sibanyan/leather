# == Schema Information
#
# Table name: sections
#
#  id          :integer          not null, primary key
#  title       :string(255)      not null
#  explanation :text(65535)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Section < ApplicationRecord
  validates :title, presence: true, length: { maximum: 200 }
end
