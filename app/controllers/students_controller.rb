class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :activate]

  def index
    @students = Student.all
  end

  def show
    # @student = Student.find(params[:id])
  end

  def edit
    # @student = Student.find(params[:id])
  end

  def update
    student = Student.find(params[:id])
    student.update(active: params[:student][:active])
    redirect_to student
  end

  def activate
    # byebug
    case @student.active
    when true
      @student.update(active: false)
    when false
      @student.update(active: true)
    end
    redirect_to @student
  end

  # def students
  #   byebug
  #
  # end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
