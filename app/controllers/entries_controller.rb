class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      redirect_to entries_path, notice: 'Entry was successfully created.'
    else
      @entry = Entry.new # Reset the instance variable
      render :new
    end
  end

  def new
    @entry = Entry.new # Initialize a new instance for the form
  end

  private
  def entry_params
    params.permit(:subject, :description, :priority)
  end
end