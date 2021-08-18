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

    redirect_to entry_path(@entry)
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])
    @entry.update(name: params[:entry][:name], subject: params[:entry][:subject], body: params[:entry][:body])

    redirect_to entry_path(@entry)
  end
end
