# frozen_string_literal: true

class DogsController < ApplicationController
  def index
    dogs = Dog.all

    cache_render DogSerializer, dogs
  end
end
