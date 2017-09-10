# == Schema Information
#
# Table name: resources
#
#  id         :integer          not null, primary key
#  type       :string(255)      not null
#  url        :string(255)      not null
#  order      :integer          not null
#  note       :string(255)
#  article_id :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_resources_on_article_id            (article_id)
#  index_resources_on_order_and_article_id  (order,article_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (article_id => articles.id)
#

class Resource < ApplicationRecord
  belongs_to :article
end
