class ConversationsController < ApplicationController
    def index
        @conversations = Conversation.order(updated_at: :desc)
        render json: @conversations
    end
    
    def create
        @conversation = Conversation.create(conversation_params)
        render json: @conversation
    end
    
    def show
        @conversation = Conversation.find(params[:id])
        render json: @conversation
    end

    def update
        @conversation = Conversation.find(params[:id])
        @conversation.update(conversation_params)
        render json: @conversation
    end

    def destroy
        @conversation = Conversation.find(params[:id])
        @conversation.destroy
        render json: @conversation
    end

    private

    def conversation_params
        params.permit(:teacher_response, :response, :time, :office_hours_date, :klass, :topic, :urgency, :office_hours, :description, :teacher_id, :student_id, :acknowledged)
    end
end