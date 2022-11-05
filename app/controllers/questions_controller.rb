# frozen_string_literal: true

class QuestionsController < ApplicationController
  def index
    questions = Question.all

    cache_render QuestionSerializer, questions
  end
end
