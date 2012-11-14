class PlowJobsController < ApplicationController
  # GET /plow_jobs
  # GET /plow_jobs.json
  def index
    @plow_jobs = PlowJob.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @plow_jobs }
    end
  end

  # GET /plow_jobs/1
  # GET /plow_jobs/1.json
  def show
    @plow_job = PlowJob.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @plow_job }
    end
  end

  # GET /plow_jobs/new
  # GET /plow_jobs/new.json
  def new
    @plow_job = PlowJob.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @plow_job }
    end
  end

  # GET /plow_jobs/1/edit
  def edit
    @plow_job = PlowJob.find(params[:id])
  end

  # POST /plow_jobs
  # POST /plow_jobs.json
  def create
    @plow_job = PlowJob.new(params[:plow_job])

    respond_to do |format|
      if @plow_job.save
        format.html { redirect_to @plow_job, notice: 'Plow job was successfully created.' }
        format.json { render json: @plow_job, status: :created, location: @plow_job }
      else
        format.html { render action: "new" }
        format.json { render json: @plow_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /plow_jobs/1
  # PUT /plow_jobs/1.json
  def update
    @plow_job = PlowJob.find(params[:id])

    respond_to do |format|
      if @plow_job.update_attributes(params[:plow_job])
        format.html { redirect_to @plow_job, notice: 'Plow job was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @plow_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plow_jobs/1
  # DELETE /plow_jobs/1.json
  def destroy
    @plow_job = PlowJob.find(params[:id])
    @plow_job.destroy

    respond_to do |format|
      format.html { redirect_to plow_jobs_url }
      format.json { head :no_content }
    end
  end
end
