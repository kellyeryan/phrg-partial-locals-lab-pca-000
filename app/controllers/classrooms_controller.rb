# frozen_string_literal: true

class ClassroomsController < ApplicationController
  def show
    @classroom = Classroom.find(params[:id])
  end

  def index
    @classrooms = Classroom.all
  end
end
