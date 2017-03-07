class GoalsController < ApplicationController
  before_action :set_goal, only: [:show, :edit, :update, :destroy, :complete_goal]
  before_action :authenticate_user!
  before_action :authenticate_has_profile

require 'action_view'
include ActionView::Helpers::DateHelper


  def current_goal
    current_goal = current_user.goals.last.id
    redirect_to goal_path(current_goal)
  end

  def complete_goal
    if !@goal.complete?
      @goal.complete = true
    end
    respond_to do |format|
      if @goal.save
        format.html { redirect_to @goal, notice: 'Yay, you did it!!.' }
        format.json { render :show, status: :ok, location: @goal }
      else
        format.html { render :edit }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /goals
  # GET /goals.json
  def index
    goals = Goal.all.order(created_at: :desc)
    @current_user_goals = goals.where(user_id: current_user.id)
  end

  # GET /goals/1
  # GET /goals/1.json
  def show

  end

  # GET /goals/new
  def new
    @goal = Goal.new
  end

  # GET /goals/1/edit
  def edit
  end

  # POST /goals
  # POST /goals.json
  def create
    @goal = Goal.new(goal_params)
    @goal.user_id = current_user.id
    c_goal = Goal.all.where(user_id: current_user.id, current_goal: true)
    c_goal.each do |c|
      c.current_goal = false
      c.save
    end
    @goal.current_goal = true
    respond_to do |format|
      if @goal.save
        format.html { redirect_to @goal, notice: 'Goal was successfully created.' }
        format.json { render :show, status: :created, location: @goal }
      else
        format.html { render :new }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /goals/1
  # PATCH/PUT /goals/1.json
  def update
    respond_to do |format|
      if @goal.update(goal_params)
        format.html { redirect_to @goal, notice: 'Goal was successfully updated.' }
        format.json { render :show, status: :ok, location: @goal }
      else
        format.html { render :edit }
        format.json { render json: @goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /goals/1
  # DELETE /goals/1.json
  def destroy
    @goal.destroy
    respond_to do |format|
      format.html { redirect_to goals_url, notice: 'Goal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal
      @goal = Goal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def goal_params
      params.require(:goal).permit(:goal_name, :deadline, :deadline_extended, :complete)
    end
end
