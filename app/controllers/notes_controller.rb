class NotesController < ApplicationController
  # GET /notes
  # GET /notes.xml
  def index
    @notes = Note.all
    @note = Note.new
	
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @notes }
    end
  end
  
  def list
    @notes = Note.all
	
    render :partial => "list", :layout => false
  end
  
  def list_editable
    @notes = Note.all
	
    render :partial => "list_editable", :layout => false
  end

  # GET /notes/1
  # GET /notes/1.xml
  def show
    @note = Note.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @note }
	
	#  format.html
	#  format.xml  { render :xml => @note } 
    end
	
  end

  # GET /notes/new
  # GET /notes/new.xml
  def new
    @note = Note.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @note }
    end
  end

  # GET /notes/1/edit
  def edit
    @note = Note.find(params[:id])
	
	render :partial => "edit", :layout => false
	
	#format.html { render :partial => "edit" }
    #format.xml  { render :xml => @note.errors, :status => :unprocessable_entity }
  end

  # POST /notes
  # POST /notes.xml
  def create
    @note = Note.new(params[:note])
	if @note.save
		render :json => { :success => :true }
	else
		render :json => { :success => :false, :errors => errors }
	end
    #respond_to do |format|
    #  if @note.save
        #format.html { redirect_to(@note, :notice => 'Note was successfully created.') }
        #format.xml  { render :xml => @note, :status => :created, :location => @note }	
    #  else
    #    format.html { render :action => "new" }
    #    format.xml  { render :xml => @note.errors, :status => :unprocessable_entity }
    #  end
    #end
  end

  # PUT /notes/1
  # PUT /notes/1.xml
  def update
    @note = Note.find(params[:id])
	
	if @note.update_attributes(params[:note])
		render :json => { :success => :true }      
    else
		render :json => { :success => :false, :errors => errors }
    end
    #respond_to do |format|
    #  if @note.update_attributes(params[:note])
    #    format.html { redirect_to(@note, :notice => 'Note was successfully updated.') }
    #    format.xml  { head :ok }
    #  else
    #    format.html { render :action => "edit" }
    #    format.xml  { render :xml => @note.errors, :status => :unprocessable_entity }
    #  end
    #end
  end

  # DELETE /notes/1
  # DELETE /notes/1.xml
  def destroy
    #@note = Note.find(params[:id])
    #@note.destroy
	
	if Note.destroy(params[:id])
      render :json => { :success => true }
    else 
      render :json => { :success => false }
    end

    #respond_to do |format|
    #  format.html { redirect_to(notes_url) }
    #  format.xml  { head :ok }
    #end
  end
end
