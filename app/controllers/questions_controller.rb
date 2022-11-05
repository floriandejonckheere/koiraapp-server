# frozen_string_literal: true

class QuestionsController < ApplicationController
  def index
    render plain: File.read(Rails.root.join("data/questions.json"))
  end
end
