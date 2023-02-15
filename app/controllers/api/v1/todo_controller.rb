module Api
    module V1
        class TodoController < ApplicationController
            def index
                todos = Todo.all
                render json: todos
            end

            def show
                todo = Todo.find(params[:id])
                render json: todo
            end

            def create
                todo = Todo.new(todo_params)
                if todo.save
                    render json: todo,status: :created
                else
                    render json: {errors:todo.errors}, status: :unprocessable_entity
                end
            end
            private
            def todo_params
                params.require(:todo).permit(:todo, :descrption, :done)
            end
        end
    end
end
