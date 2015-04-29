class RemoveDocumentsFromDocumentGroup < ActiveRecord::Migration
  def change
  	remove_column :document_groups, :documents
  end
end
