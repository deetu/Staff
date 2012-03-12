class CommentsController < ApplicationController
  def create
    @person = Person.find(params[:person_id])
    @comment = @person.comments.create(params[:comment])
    redirect_to person_path(@person)
  end
  
  def destroy
    @person = Person.find(params[:person_id])
    @comment = @person.comments.find(params[:id])
    @comment.destroy
    redirect_to person_path(@person)
  end

end
