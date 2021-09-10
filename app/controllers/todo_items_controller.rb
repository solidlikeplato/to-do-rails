class TodoItemsController < ApplicationController
  before_action :set_author, :set_todo_item
  def index
    @todo_items = TodoItem.all
  end

  def show
  end

  def create
    @todo_item = @author.todo_items.create(todo_item_params)
    redirect_to @author
  end

  private

  def set_author
    @author = Author.find(params[:id])
  end

  def set_todo_item
    @todo_item = TodoItem.find(params[:id])
  end

  def todo_item_params
    params[:todo_item].permit(:title, :description, :is_done)
  end
end
