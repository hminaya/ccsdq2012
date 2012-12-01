class RosterEntriesController < ApplicationController
  # GET /roster_entries
  # GET /roster_entries.json
  def index
    @roster_entries = RosterEntry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @roster_entries }
    end
  end

  # GET /roster_entries/1
  # GET /roster_entries/1.json
  def show
    @roster_entry = RosterEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @roster_entry }
    end
  end

  # GET /roster_entries/new
  # GET /roster_entries/new.json
  def new
    @roster_entry = RosterEntry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @roster_entry }
    end
  end

  # GET /roster_entries/1/edit
  def edit
    @roster_entry = RosterEntry.find(params[:id])
  end

  # POST /roster_entries
  # POST /roster_entries.json
  def create
    @roster_entry = RosterEntry.new(params[:roster_entry])

    respond_to do |format|
      if @roster_entry.save
        format.html { redirect_to @roster_entry, notice: 'Roster entry was successfully created.' }
        format.json { render json: @roster_entry, status: :created, location: @roster_entry }
      else
        format.html { render action: "new" }
        format.json { render json: @roster_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /roster_entries/1
  # PUT /roster_entries/1.json
  def update
    @roster_entry = RosterEntry.find(params[:id])

    respond_to do |format|
      if @roster_entry.update_attributes(params[:roster_entry])
        format.html { redirect_to @roster_entry, notice: 'Roster entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @roster_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roster_entries/1
  # DELETE /roster_entries/1.json
  def destroy
    @roster_entry = RosterEntry.find(params[:id])
    @roster_entry.destroy

    respond_to do |format|
      format.html { redirect_to roster_entries_url }
      format.json { head :no_content }
    end
  end
end
