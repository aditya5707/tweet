class BlogsController < ApplicationController



  def index
    @user = Blogg.all
    logger.info "helooooooooooooooooooooooooooooo"

  end

  def new
    @user = Blogg.new
    respond_to do |format|
      format.html
    end
  end

  def show

    logger.info "sdfkjsdhfjksdhfjksdhjkfhsdjkfhsdjkhfjksdhjkfhsdjkfhjksdhfjks"

    @user = Blogg.find(params[:id])
    logger.info("+++++++++#{@user.inspect}")
    if params[:username].present?
      @comment = @user.comments.new(:username => params[:username],:content => params[:comment])
      @comment.save
    end
    @comments = @user.comments

    respond_to do |format|
      format.js
      format.html

    end

  end

  def update
    @user = Blogg.find(params[:id])
    respond_to do |format|
      if @user.update_attributes(params[:blogg])
        format.html { redirect_to blog_path, :method => 'put', :notice => "User update successful" }
      else
        format.html {render :action => "edit"}
      end
    end
  end

  def edit
    @user = Blogg.all
  end

  def create
    @user = Blogg.new(params[:blogg])

    respond_to do |format|
      if @user.save
        format.html { redirect_to blogs_path }
        format.json { render :json => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.json { render :json => @user.errors, :status => :unprocessable_entity }
      end
    end

  end

  def destroy
    @user = Blogg.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to blogs_path, :method => 'delete'}
    end
  end

  def index_comment
    @user = Blogg.all
  end


  def create_comment
    logger.info "###################################################"
    @user = Blogg.find(params[:id])
    #@comment = @user.comments.create(:content => params[:content])
    @comment= @user.comments.new(params[:blogg][:comment])
    respond_to do |format|
      if @comment.save

        format.html { redirect_to blog_path(@user) }
      end
    end
  end


  def destroy_comment
    logger.info "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@222222222222222222222222222222221111111"
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to blogs_path
  end

end