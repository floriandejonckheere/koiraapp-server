# frozen_string_literal: true

class QuestionSerializer < CacheCrispies::Base
  key nil
  collection_key nil

  serialize :id,
            :question,
            :answer
end
