class DocumentsController < ApplicationController
  def show
    @document = Document.find(params[:id])
    @group=DocumentGroup.find(@document.document_group_id)
  end

  def new   
    @group = DocumentGroup.find(params[:document_group_id])
    @document = Document.new(document_group_id: @group.id)
  end

  def create
    @document = Document.new(document_params)

    if @document.save
      redirect_to @document
    else
      render :new
    end
  end

  def edit
    @document = Document.find(params[:id])
  end

  def update
    @document = Document.find(params[:id])

    if @document.update(document_params)
      redirect_to @document
    else
      render :new
    end
  end

  def destroy
    @document = Document.find(params[:id])
    @document.destroy
    redirect_to document_group_path, notice: 'File deleted'
  end

  private

  def document_params
    params.require(:document).permit(:name, :description, :document_group_id)
  end

end
