class MojisController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  # GET /mojis
  # GET /mojis.json
  def index
    @mojis = Moji.order(:created_at).page params[:page]

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mojis }
    end
  end

  # GET /mojis/1
  # GET /mojis/1.json
  def show
    @moji = Moji.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @moji }
    end
  end

  # GET /mojis/new
  # GET /mojis/new.json
  def new
    @moji = Moji.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @moji }
    end
  end

  # GET /mojis/1/edit
  def edit
    @moji = Moji.find(params[:id])
  end

  # POST /mojis
  # POST /mojis.json
  def create
    @moji = Moji.new(params[:moji])
    @moji.user_id = current_user.id

    respond_to do |format|
      if @moji.save
        format.html { redirect_to @moji, notice: 'Moji was successfully created.' }
        format.json { render json: @moji, status: :created, location: @moji }
      else
        format.html { render action: "new" }
        format.json { render json: @moji.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mojis/1
  # PUT /mojis/1.json
  def update
    @moji = Moji.find(params[:id])

    respond_to do |format|
      if @moji.update_attributes(params[:moji])
        format.html { redirect_to @moji, notice: 'Moji was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @moji.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mojis/1
  # DELETE /mojis/1.json
  def destroy
    @moji = Moji.find(params[:id])
    @moji.destroy

    respond_to do |format|
      format.html { redirect_to mojis_url }
      format.json { head :no_content }
    end
  end
end
