ActiveRecord::ConnectionAdapters::TableDefinition.module_eval <<-RUBY, __FILE__, __LINE__ + 1
  def serial
    column :serial, 'char(22)', null: false, index: { unique: true }
  end
RUBY
