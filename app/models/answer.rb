class Answer < ActiveRecord::Base
  belongs_to :question

  # この行を追加
  acts_as_sequenced scope: :question_id
end
