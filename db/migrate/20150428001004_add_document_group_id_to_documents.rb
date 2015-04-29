class AddDocumentGroupIdToDocuments < ActiveRecord::Migration
  def change
  	add_column :documents, :document_group_id, :integer
  end
end
