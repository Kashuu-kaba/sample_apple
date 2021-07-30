class TodolistsController < ApplicationController

  def new
    @list = List.new()
  end

  def create
    list = List.new(list_params)
    list.save
    redirect_to todolist_path(list), notice: "作成に成功しました"
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def list_params
    params.require(:list).permit(:title, :body)
  end

  def set_params
    @list = List.find(params[:id])
  end
end
