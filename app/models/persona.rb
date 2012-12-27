class Persona < ActiveRecord::Base
	self.table_name = 'persona'
	self.primary_keys = :IDDocumento, :IDTipoDoc
end
