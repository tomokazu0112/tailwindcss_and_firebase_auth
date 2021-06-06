# == Schema Information
#
# Table name: posts
#
#  id           :bigint           not null, primary key
#  content      :text
#  published_at :datetime
#  slug         :string
#  status       :enum
#  summary      :string
#  title        :string           default(""), not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :bigint
#
# Indexes
#
#  index_posts_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :post do
    title { "MyString" }
    summary { "MyString" }
    content { "MyText" }
    slug { "MyString" }
    published_at { "2021-06-06 02:12:04" }
    references { "" }
  end
end
