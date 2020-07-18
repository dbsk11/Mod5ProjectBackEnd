class ConversationsController < ApplicationController
    def index
        @conversations = Conversation.all
        render json: @conversations
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

    private

    def conversation_params
        params.permit(:teacher_response, :response, :time, :klass, :topic, :urgency, :office_hours, :description)
    end
end