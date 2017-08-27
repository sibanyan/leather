# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  keyword    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Article < ApplicationRecord
end
