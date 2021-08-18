class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def new
  end

  def create
    @entry = Entry.new
    @entry[:name] = params[:entry][:name]
    @entry[:subject] = params[:entry][:subject]
    @entry[:body] = params[:entry][:body]
    @entry.save

    redirect_to 
  end

  def show
  end

  def edit
  end

  def update
  end
end
