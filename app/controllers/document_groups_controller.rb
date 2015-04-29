class DocumentGroupsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]

  def index
  	@document_groups = DocumentGroup.all
  end

  def show
    @document_group = DocumentGroup.find(params[:id])
  end

  def new   
    @document_group = DocumentGroup.new
  end

  def create
    @document_group = DocumentGroup.new(document_group_params)

    if @document_group.save
      redirect_to @document_group
    else
      render :new
    end
  end

  def edit
    @document_group = DocumentGroup.find(params[:id])
  end

  def update
    @document_group = DocumentGroup.find(params[:id])

    if @document_group.update(document_group_params)
      redirect_to @document_group
    else
      render :new
    end
  end

  def destroy
    @document_group = DocumentGroup.find(params[:id])
    @document_group.destroy
    redirect_to document_groups_path, notice: 'Folder deleted'
  end

  private

  def document_group_params
    params.require(:document_group).permit(:name)
  end

end
