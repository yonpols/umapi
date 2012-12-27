class Alumno < ActiveRecord::Base
	self.table_name = :aluleg
	self.primary_keys = :IDFacultad, :IDDocumento, :IDTipoDoc, :ALe_Geo_ID

	belongs_to :persona, class_name: 'Persona', foreign_key: [:IDDocumento, :IDTipoDoc]

	#http://compositekeys.rubyforge.org/
end
