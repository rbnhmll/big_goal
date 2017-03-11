class DefaultMessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_is_admin!
  before_action :set_default_message, only: [:edit, :update, :destroy]

  # GET /default_messages
  # GET /default_messages.json
  def index
    @default_messages = DefaultMessage.all
  end

  # GET /default_messages/new
  def new
    @default_message = DefaultMessage.new
  end

  # GET /default_messages/1/edit
  def edit
  end

  # POST /default_messages
  # POST /default_messages.json
  def create
    @default_message = DefaultMessage.new(default_message_params)

    respond_to do |format|
      if @default_message.save
        format.html { redirect_to default_messages_path, notice: 'Default message was successfully created.' }
        format.json { render :index, status: :created, location: @default_message }
      else
        format.html { render :new }
        format.json { render json: @default_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /default_messages/1
  # PATCH/PUT /default_messages/1.json
  def update
    respond_to do |format|
      if @default_message.update(default_message_params)
        format.html { redirect_to default_messages_path, notice: 'Default message was successfully updated.' }
        format.json { render :index, status: :ok, location: @default_message }
      else
        format.html { render :edit }
        format.json { render json: @default_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /default_messages/1
  # DELETE /default_messages/1.json
  def destroy
    @default_message.destroy
    respond_to do |format|
      format.html { redirect_to default_messages_url, notice: 'Default message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_default_message
      @default_message = DefaultMessage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def default_message_params
      params.require(:default_message).permit(:message)
    end
end
