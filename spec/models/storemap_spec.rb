# == Schema Information
#
# Table name: storemaps
#
#  id         :bigint           not null, primary key
#  url        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  store_id   :string
#
require "rails_helper"

RSpec.describe Storemap, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
