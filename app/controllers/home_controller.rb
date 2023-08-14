class HomeController < ApplicationController
  def create
  @entry = Entry.new(entry_params)
  if @entry.save
    flash[:notice] = 'Entry created successfully!'
    redirect_to entries_path
  else
    puts @entry.errors.full_messages # Check the console for validation errors
    render :new
  end
end

  def entry_params
    params.permit(:subject, :description, :priority)
  end

  def index
      @entries = Entry.all
  end

  def new
    @entry = Entry.new
  end
end
