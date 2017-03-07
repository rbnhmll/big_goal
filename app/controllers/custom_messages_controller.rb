class CustomMessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_custom_message, only: [:show, :edit, :update, :destroy]

  # GET /custom_messages
  # GET /custom_messages.json
  def index
    @custom_messages = CustomMessage.where(user_id: current_user.id)
  end

  # GET /custom_messages/1
  # GET /custom_messages/1.json
  def show
  end

  # GET /custom_messages/new
  def new
    @custom_message = CustomMessage.new
  end

  # GET /custom_messages/1/edit
  def edit
  end

  # POST /custom_messages
  # POST /custom_messages.json
  def create
    @custom_message = CustomMessage.new(custom_message_params)
    @custom_message.user_id = current_user.id
    respond_to do |format|
      if @custom_message.save
        format.html { redirect_to @custom_message, notice: 'Custom message was successfully created.' }
        format.json { render :show, status: :created, location: @custom_message }
      else
        format.html { render :new }
        format.json { render json: @custom_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom_messages/1
  # PATCH/PUT /custom_messages/1.json
  def update
    respond_to do |format|
      if @custom_message.update(custom_message_params)
        format.html { redirect_to @custom_message, notice: 'Custom message was successfully updated.' }
        format.json { render :show, status: :ok, location: @custom_message }
      else
        format.html { render :edit }
        format.json { render json: @custom_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_messages/1
  # DELETE /custom_messages/1.json
  def destroy
    @custom_message.destroy
    respond_to do |format|
      format.html { redirect_to custom_messages_url, notice: 'Custom message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custom_message
      @custom_message = CustomMessage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def custom_message_params
      params.require(:custom_message).permit(:message)
    end
end
