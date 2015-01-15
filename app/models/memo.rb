# == Schema Information
#
# Table name: memos
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#

class Memo < ActiveRecord::Base
end
