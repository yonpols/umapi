# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 0) do

  create_table "alu_carrera", :id => false, :force => true do |t|
    t.integer "ACa_Per_ID",                                                  :default => 0,   :null => false
    t.integer "ACa_Doc_ID",       :limit => 2,                               :default => 0,   :null => false
    t.integer "ACa_Fac_ID",       :limit => 2,                               :default => 0,   :null => false
    t.integer "ACa_Pla_ID",       :limit => 2,                               :default => 0,   :null => false
    t.integer "ACa_Car_ID",       :limit => 2,                               :default => 0,   :null => false
    t.integer "ACa_OblRen",       :limit => 2,                               :default => 0,   :null => false
    t.integer "ACa_OblTot",       :limit => 2,                               :default => 0,   :null => false
    t.integer "ACa_OptRen",       :limit => 2,                               :default => 0,   :null => false
    t.integer "ACa_OptTot",       :limit => 2,                               :default => 0,   :null => false
    t.decimal "ACa_PromSinAp",                 :precision => 4, :scale => 2, :default => 0.0, :null => false
    t.integer "ACa_CantSinAp",    :limit => 2,                               :default => 0
    t.decimal "ACa_PromConAp",                 :precision => 4, :scale => 2, :default => 0.0, :null => false
    t.integer "ACa_CantConAp",    :limit => 2,                               :default => 0
    t.decimal "ACa_PromSinApEsp",              :precision => 4, :scale => 2, :default => 0.0, :null => false
    t.integer "ACa_CantSinApEsp", :limit => 2,                               :default => 0
    t.decimal "ACa_PromConApEsp",              :precision => 4, :scale => 2, :default => 0.0, :null => false
    t.integer "ACa_CantConApEsp", :limit => 2,                               :default => 0
    t.integer "ACa_ID",                                                                       :null => false
  end

  add_index "alu_carrera", ["ACa_Car_ID"], :name => "IDCarrera1"
  add_index "alu_carrera", ["ACa_Doc_ID"], :name => "IDTipoDoc"
  add_index "alu_carrera", ["ACa_Fac_ID"], :name => "IDFacultad"
  add_index "alu_carrera", ["ACa_ID"], :name => "ACa_ID"
  add_index "alu_carrera", ["ACa_Per_ID"], :name => "IDDocumento"
  add_index "alu_carrera", ["ACa_Pla_ID"], :name => "IDPlan"

  create_table "alu_ringreso", :id => false, :force => true do |t|
    t.integer "ARI_Fac_ID",     :limit => 2, :default => 0,     :null => false
    t.integer "ARI_Per_ID",                  :default => 0,     :null => false
    t.integer "ARI_Doc_ID",     :limit => 2, :default => 0,     :null => false
    t.integer "ARI_Requisitos",              :default => 0,     :null => false
    t.boolean "ARI_Presentado",              :default => false, :null => false
  end

  add_index "alu_ringreso", ["ARI_Doc_ID"], :name => "ARI_Doc_ID"
  add_index "alu_ringreso", ["ARI_Fac_ID"], :name => "ARI_Fac_ID"
  add_index "alu_ringreso", ["ARI_Per_ID"], :name => "ARI_Per_ID"

  create_table "aluescalas", :id => false, :force => true do |t|
    t.integer "aes_per_id",              :default => 0, :null => false
    t.integer "aes_doc_id", :limit => 2, :default => 0, :null => false
    t.integer "aes_fac_id", :limit => 2, :default => 0, :null => false
    t.integer "aes_pla_id", :limit => 2, :default => 0, :null => false
    t.integer "aes_car_id", :limit => 2, :default => 0, :null => false
    t.integer "aes_esc_id", :limit => 2, :default => 0, :null => false
    t.date    "aes_desde",                              :null => false
    t.date    "aes_hasta",                              :null => false
    t.integer "aes_id",                                 :null => false
  end

  add_index "aluescalas", ["aes_id"], :name => "aes_id"

  create_table "aluleg", :id => false, :force => true do |t|
    t.integer "IDDocumento",                    :default => 0,     :null => false
    t.integer "IDTipoDoc",        :limit => 2,  :default => 0,     :null => false
    t.integer "IDFacultad",       :limit => 2,  :default => 0,     :null => false
    t.integer "ALe_Geo_ID",       :limit => 2,  :default => 1,     :null => false
    t.integer "IDLegajo"
    t.date    "ALe_Fecha"
    t.integer "ALe_Pla_ID",       :limit => 2,  :default => 0
    t.integer "ALe_Car_ID",       :limit => 2,  :default => 0
    t.integer "ALe_MAE_ID",                     :default => 0,     :null => false
    t.string  "ALe_Clave",        :limit => 16
    t.boolean "ALe_Intercambio",                :default => false, :null => false
    t.integer "ALe_Archivo",                    :default => 0,     :null => false
    t.string  "ALe_Chequera",     :limit => 15
    t.boolean "ALe_LegPendiente",               :default => false
    t.string  "key",              :limit => 40
    t.integer "id",                                                :null => false
  end

  add_index "aluleg", ["ALe_Archivo"], :name => "ALe_Archivo"
  add_index "aluleg", ["ALe_Archivo"], :name => "ALe_Archivo_2"
  add_index "aluleg", ["ALe_Car_ID"], :name => "ALe_Car_ID"
  add_index "aluleg", ["ALe_Pla_ID"], :name => "ALe_Pla_ID"
  add_index "aluleg", ["IDDocumento"], :name => "IDDocumento"
  add_index "aluleg", ["IDFacultad"], :name => "IDFacultad"
  add_index "aluleg", ["IDLegajo"], :name => "IDLegajo"
  add_index "aluleg", ["IDTipoDoc"], :name => "IDTipoDoc"
  add_index "aluleg", ["id"], :name => "id"

  create_table "alulegg", :id => false, :force => true do |t|
    t.integer "ALG_Fac_ID",      :limit => 2, :default => 0,     :null => false
    t.integer "ALG_Per_ID",                   :default => 0,     :null => false
    t.integer "ALG_Doc_ID",      :limit => 2, :default => 0,     :null => false
    t.integer "ALG_Leg_ID"
    t.date    "ALG_Fecha"
    t.integer "ALG_Pla_ID",      :limit => 2
    t.integer "ALG_Car_ID",      :limit => 2
    t.integer "ALG_MAE_ID"
    t.integer "ALG_Geo_ID",      :limit => 2, :default => 1,     :null => false
    t.boolean "ALG_Intercambio",              :default => false, :null => false
    t.integer "ALG_Archivo",                  :default => 0,     :null => false
  end

  add_index "alulegg", ["ALG_Archivo"], :name => "ALG_Archivo"
  add_index "alulegg", ["ALG_Archivo"], :name => "ALG_Archivo_2"
  add_index "alulegg", ["ALG_Fac_ID", "ALG_Pla_ID", "ALG_Car_ID"], :name => "ALG_Fac_ID"

  create_table "alumatestado", :id => false, :force => true do |t|
    t.integer "AME_Fac_ID", :limit => 2,  :default => 0,  :null => false
    t.integer "AME_Per_ID",               :default => 0,  :null => false
    t.integer "AME_Doc_ID", :limit => 2,  :default => 0,  :null => false
    t.integer "AME_Pla_ID", :limit => 2,  :default => 0,  :null => false
    t.integer "AME_Car_ID", :limit => 2,  :default => 0,  :null => false
    t.string  "AME_Mat_ID", :limit => 10, :default => "", :null => false
    t.integer "AME_MAE_ID",               :default => 0,  :null => false
    t.integer "AME_Estado",               :default => 0,  :null => false
  end

  add_index "alumatestado", ["AME_Car_ID"], :name => "AME_Car_ID"
  add_index "alumatestado", ["AME_Doc_ID"], :name => "AME_Doc_ID"
  add_index "alumatestado", ["AME_Fac_ID"], :name => "AME_Per_ID"
  add_index "alumatestado", ["AME_Mat_ID"], :name => "AME_Mat_ID"
  add_index "alumatestado", ["AME_Per_ID"], :name => "AME_Per_ID1"
  add_index "alumatestado", ["AME_Pla_ID"], :name => "AME_Pla_ID"

  create_table "alumno", :id => false, :force => true do |t|
    t.integer  "IDDocumento",                  :default => 0, :null => false
    t.integer  "IDTipoDoc",     :limit => 2,   :default => 0, :null => false
    t.integer  "IDFacultad",    :limit => 2,   :default => 0, :null => false
    t.integer  "IDPlan",        :limit => 2,   :default => 0, :null => false
    t.integer  "IDCarrera",     :limit => 2,   :default => 0, :null => false
    t.datetime "alta",                                        :null => false
    t.string   "observaciones", :limit => 100
  end

  add_index "alumno", ["IDCarrera"], :name => "IDCarrera1"
  add_index "alumno", ["IDDocumento"], :name => "IDDocumento"
  add_index "alumno", ["IDFacultad"], :name => "IDFacultad"
  add_index "alumno", ["IDPlan"], :name => "IDPlan"
  add_index "alumno", ["IDTipoDoc"], :name => "IDTipoDoc"

  create_table "anotador", :id => false, :force => true do |t|
    t.integer  "Ant_Per_ID",                       :default => 0, :null => false
    t.integer  "Ant_Doc_ID",        :limit => 2,   :default => 0, :null => false
    t.integer  "Ant_ID",                           :default => 0, :null => false
    t.datetime "Ant_Fecha"
    t.string   "Ant_Observaciones", :limit => 250
  end

  add_index "anotador", ["Ant_Doc_ID"], :name => "Ant_Doc_ID"
  add_index "anotador", ["Ant_ID"], :name => "Ant_ID"
  add_index "anotador", ["Ant_Per_ID"], :name => "Ant_Per_ID"

  create_table "aplazos", :id => false, :force => true do |t|
    t.integer "Apl_Ter_ID",              :default => 0,  :null => false
    t.integer "Apl_Fac_ID", :limit => 2, :default => 0,  :null => false
    t.integer "Apl_Pla_ID", :limit => 2, :default => 0,  :null => false
    t.integer "Apl_Per_ID",              :default => 0,  :null => false
    t.integer "Apl_Doc_ID", :limit => 2, :default => 0,  :null => false
    t.string  "Apl_Libro",  :limit => 5, :default => "", :null => false
    t.integer "Apl_Folio",  :limit => 2, :default => 0,  :null => false
  end

  create_table "asistencia", :id => false, :force => true do |t|
    t.integer "Asi_Fac_ID",   :limit => 2,  :default => 0,     :null => false
    t.integer "Asi_Pla_ID",   :limit => 2,  :default => 0,     :null => false
    t.string  "Asi_Mat_ID",   :limit => 10, :default => "",    :null => false
    t.integer "Asi_Anio",     :limit => 2,  :default => 0,     :null => false
    t.integer "Asi_Mes",      :limit => 2,  :default => 0,     :null => false
    t.integer "Asi_Dia",      :limit => 2,  :default => 0,     :null => false
    t.integer "Asi_Tur_ID",   :limit => 2,  :default => 0,     :null => false
    t.integer "Asi_Per_ID",                 :default => 0,     :null => false
    t.integer "Asi_Doc_ID",   :limit => 2,  :default => 0,     :null => false
    t.date    "Asi_Fecha"
    t.boolean "Asi_Presente",               :default => false
  end

  add_index "asistencia", ["Asi_Doc_ID"], :name => "Asi_Doc_ID"
  add_index "asistencia", ["Asi_Fac_ID"], :name => "Asi_ID"
  add_index "asistencia", ["Asi_Mat_ID"], :name => "Asi_Mat_ID"
  add_index "asistencia", ["Asi_Per_ID"], :name => "Asi_Per_ID"
  add_index "asistencia", ["Asi_Pla_ID"], :name => "Asi_Pla_ID"
  add_index "asistencia", ["Asi_Tur_ID"], :name => "Asi_Tur_ID"

  create_table "autodivision", :id => false, :force => true do |t|
    t.integer "ADi_Fac_ID", :limit => 2,  :default => 0,  :null => false
    t.integer "ADi_Lec_ID", :limit => 2,  :default => 0,  :null => false
    t.integer "ADi_Pla_ID", :limit => 2,  :default => 0,  :null => false
    t.integer "ADi_Car_ID", :limit => 2,  :default => 0,  :null => false
    t.string  "ADi_Mat_ID", :limit => 10, :default => "", :null => false
    t.integer "ADi_Geo_ID", :limit => 2,  :default => 0,  :null => false
    t.integer "ADi_Cur_ID", :limit => 2
    t.integer "ADi_Per_ID", :limit => 2
    t.integer "ADi_Div_ID", :limit => 2
  end

  create_table "autorizacion", :id => false, :force => true do |t|
    t.integer "IDFacultad", :limit => 2,  :default => 0,  :null => false
    t.string  "IDUsuario",  :limit => 50, :default => "", :null => false
    t.integer "Form",       :limit => 2,  :default => 0,  :null => false
    t.integer "IDTarea",    :limit => 2,  :default => 0,  :null => false
  end

  add_index "autorizacion", ["Form"], :name => "Form"
  add_index "autorizacion", ["IDFacultad"], :name => "IDFacultad"
  add_index "autorizacion", ["IDTarea"], :name => "IDTarea"
  add_index "autorizacion", ["IDUsuario"], :name => "IDUsuario"

  create_table "baja", :id => false, :force => true do |t|
    t.integer "Baj_IDFacultad",      :limit => 2,   :default => 0,     :null => false
    t.integer "Baj_IDDocumento",                    :default => 0,     :null => false
    t.integer "Baj_IDTipoDoc",       :limit => 2,   :default => 0,     :null => false
    t.integer "Baj_IDLectivo",       :limit => 2,   :default => 0,     :null => false
    t.boolean "Baj_Definitiva",                     :default => false
    t.boolean "Baj_Cer_Ana_Parcial",                :default => false
    t.boolean "Baj_Libre_Deuda",                    :default => false
    t.boolean "Baj_Temporaria",                     :default => false
    t.string  "Baj_Motivo",          :limit => 500
    t.date    "Baj_Fecha"
  end

  add_index "baja", ["Baj_IDDocumento"], :name => "IDDocumento"
  add_index "baja", ["Baj_IDFacultad"], :name => "IDFacultad"
  add_index "baja", ["Baj_IDLectivo"], :name => "IDLectivo"
  add_index "baja", ["Baj_IDTipoDoc"], :name => "IDTipoDoc"

  create_table "beca", :id => false, :force => true do |t|
    t.integer "Bec_Fac_ID",        :limit => 2, :default => 0, :null => false
    t.integer "Bec_Per_ID",                     :default => 0, :null => false
    t.integer "Bec_Doc_ID",        :limit => 2, :default => 0, :null => false
    t.integer "Bec_Lec_ID",        :limit => 2, :default => 0, :null => false
    t.integer "Bec_Denominador",   :limit => 2, :default => 0
    t.integer "Bec_NSolicitud"
    t.string  "Bec_Observaciones"
  end

  add_index "beca", ["Bec_Doc_ID"], :name => "Bec_Doc_ID"
  add_index "beca", ["Bec_Fac_ID"], :name => "Bec_Fac_ID"
  add_index "beca", ["Bec_Lec_ID"], :name => "Bec_Lec_ID"
  add_index "beca", ["Bec_Per_ID"], :name => "Bec_Per_ID"

  create_table "bibdeudores", :id => false, :force => true do |t|
    t.integer "BiD_Per_ID",              :default => 0, :null => false
    t.integer "BiD_Doc_ID", :limit => 2, :default => 0, :null => false
    t.date    "BiD_Inicio",                             :null => false
    t.date    "BiD_Fin"
    t.string  "BiD_Observ"
  end

  create_table "bloque", :id => false, :force => true do |t|
    t.integer "Blo_Fac_ID", :limit => 2,   :default => 0,  :null => false
    t.integer "Blo_ID",     :limit => 2,   :default => 0,  :null => false
    t.string  "Blo_Nombre", :limit => 100, :default => "", :null => false
  end

  create_table "calificacion", :id => false, :force => true do |t|
    t.integer "IDDocumento",                    :default => 0,     :null => false
    t.integer "IDTipoDoc",        :limit => 2,  :default => 0,     :null => false
    t.integer "IDFacultad",       :limit => 2,  :default => 0,     :null => false
    t.integer "IDPlan",           :limit => 2,  :default => 0,     :null => false
    t.string  "IDMateria",        :limit => 10, :default => "",    :null => false
    t.date    "fecha",                                             :null => false
    t.string  "calif",            :limit => 10,                    :null => false
    t.string  "libro",            :limit => 5,                     :null => false
    t.integer "folio",            :limit => 2,  :default => 0,     :null => false
    t.boolean "Cal_Promociona",                 :default => false, :null => false
    t.boolean "Cal_Equivalencia",               :default => false, :null => false
    t.boolean "Cal_Pase",                       :default => false, :null => false
    t.integer "Cal_Geo_ID",       :limit => 2,  :default => 1,     :null => false
    t.integer "Cal_Lec_ID_Rg",    :limit => 2,  :default => 0,     :null => false
    t.integer "Cal_Lec_ID_Ex",    :limit => 2,  :default => 0,     :null => false
    t.integer "Cal_Lla_ID_Ex",    :limit => 2,  :default => 0,     :null => false
    t.string  "Cal_Calif_Esc",    :limit => 10,                    :null => false
    t.integer "id",                                                :null => false
  end

  add_index "calificacion", ["Cal_Calif_Esc"], :name => "Cal_Calif_Esc"
  add_index "calificacion", ["Cal_Pase"], :name => "cal_pase"
  add_index "calificacion", ["IDDocumento"], :name => "IDDocumento"
  add_index "calificacion", ["IDFacultad"], :name => "IDFacultad"
  add_index "calificacion", ["IDMateria"], :name => "IDMateria"
  add_index "calificacion", ["IDPlan"], :name => "IDPlan"
  add_index "calificacion", ["IDTipoDoc"], :name => "IDTipoDoc"
  add_index "calificacion", ["calif"], :name => "calif"
  add_index "calificacion", ["fecha"], :name => "fecha"
  add_index "calificacion", ["folio"], :name => "folio"
  add_index "calificacion", ["id"], :name => "id"
  add_index "calificacion", ["libro"], :name => "libro"

  create_table "cambiodoc", :id => false, :force => true do |t|
    t.integer  "CDo_Per_ID",                       :default => 0, :null => false
    t.integer  "CDo_Doc_ID",          :limit => 2, :default => 0, :null => false
    t.integer  "CDo_Per_ID_Anterior",              :default => 0, :null => false
    t.integer  "CDo_Doc_ID_Anterior", :limit => 2, :default => 0, :null => false
    t.datetime "CDo_Fecha"
  end

  add_index "cambiodoc", ["CDo_Doc_ID"], :name => "CDo_Doc_ID"
  add_index "cambiodoc", ["CDo_Per_ID"], :name => "CDo_Per_ID"

  create_table "cargomateria", :primary_key => "CaM_ID", :force => true do |t|
    t.string  "CaM_Nombre",      :limit => 50, :default => "", :null => false
    t.integer "CaM_Precedencia", :limit => 2,  :default => 0,  :null => false
  end

  add_index "cargomateria", ["CaM_Precedencia"], :name => "CaM_Precedencia"

  create_table "carmatdes", :id => false, :force => true do |t|
    t.integer "CMD_CaM_ID",   :limit => 2, :default => 0,   :null => false
    t.integer "CMD_Des_ID",   :limit => 2, :default => 0,   :null => false
    t.integer "CMD_Importe",               :default => 0,   :null => false
    t.integer "CMD_EDocente",              :default => 0,   :null => false
    t.integer "CMD_Factor",   :limit => 2, :default => 100, :null => false
  end

  create_table "carrera", :id => false, :force => true do |t|
    t.integer "IDFacultad",          :limit => 2,   :default => 0,     :null => false
    t.integer "IDPlan",              :limit => 2,   :default => 0,     :null => false
    t.integer "IDCarrera",           :limit => 2,   :default => 0,     :null => false
    t.string  "Nombre",              :limit => 150, :default => "",    :null => false
    t.string  "iniciales",           :limit => 5,                      :null => false
    t.string  "Titulo",              :limit => 150,                    :null => false
    t.boolean "Car_Trabajo_Final",                  :default => false, :null => false
    t.string  "Car_Resolucion",      :limit => 100,                    :null => false
    t.boolean "Car_CheqUnica",                      :default => false, :null => false
    t.integer "Car_Blo_ID",          :limit => 2,   :default => 0,     :null => false
    t.integer "Car_OptObligatorias", :limit => 2,                      :null => false
  end

  create_table "catedra", :id => false, :force => true do |t|
    t.integer "ctd_fac_id", :limit => 2,   :default => 0,  :null => false
    t.integer "ctd_pla_id", :limit => 2,   :default => 0,  :null => false
    t.integer "ctd_id",     :limit => 2,   :default => 0,  :null => false
    t.string  "ctd_nombre", :limit => 150, :default => "", :null => false
  end

  create_table "colainscripcion", :id => false, :force => true do |t|
    t.integer   "CoI_Fac_ID",        :limit => 2, :default => 0,     :null => false
    t.integer   "CoI_Lec_ID",        :limit => 2, :default => 0,     :null => false
    t.integer   "CoI_Per_ID",                     :default => 0,     :null => false
    t.integer   "CoI_Doc_ID",        :limit => 2, :default => 0,     :null => false
    t.timestamp "CoI_HoraPedido",                                    :null => false
    t.boolean   "CoI_Pendiente",                  :default => true,  :null => false
    t.datetime  "CoI_HoraImpresion"
    t.boolean   "CoI_Impreso",                    :default => false, :null => false
    t.integer   "CoI_ID",                                            :null => false
  end

  add_index "colainscripcion", ["CoI_ID"], :name => "CoI_ID"

  create_table "colegio", :id => false, :force => true do |t|
    t.integer "Col_Fac_ID", :limit => 2,   :default => 1,  :null => false
    t.integer "IDColegio",  :limit => 2,   :default => 0,  :null => false
    t.string  "Nombre",     :limit => 250, :default => "", :null => false
  end

  create_table "colegiocarrera", :id => false, :force => true do |t|
    t.string  "colegio",   :limit => 250, :default => "", :null => false
    t.integer "documento",                :default => 0,  :null => false
    t.integer "cohorte",   :limit => 2,   :default => 0,  :null => false
    t.string  "carrera",   :limit => 150, :default => "", :null => false
  end

  create_table "condicional", :id => false, :force => true do |t|
    t.integer "IDFacultad",  :limit => 2, :default => 0,     :null => false
    t.integer "IDDocumento",              :default => 0,     :null => false
    t.integer "IDTipoDoc",   :limit => 2, :default => 0,     :null => false
    t.integer "IDLectivo",   :limit => 2, :default => 0,     :null => false
    t.integer "IDPlan",      :limit => 2, :default => 0,     :null => false
    t.integer "IDCarrera",   :limit => 2, :default => 0,     :null => false
    t.boolean "Condicional",              :default => false, :null => false
    t.date    "Fecha",                                       :null => false
    t.string  "Con_Estado",               :default => "",    :null => false
  end

  add_index "condicional", ["IDCarrera"], :name => "IDCarrera"
  add_index "condicional", ["IDDocumento"], :name => "IDDocumento"
  add_index "condicional", ["IDFacultad"], :name => "IDFacultad"
  add_index "condicional", ["IDLectivo"], :name => "IDLectivo"
  add_index "condicional", ["IDPlan"], :name => "IDPlan"
  add_index "condicional", ["IDTipoDoc"], :name => "IDTipoDoc"

  create_table "condiferido", :id => false, :force => true do |t|
    t.integer "CDi_Fac_ID",      :limit => 2, :default => 0,     :null => false
    t.integer "CDi_Per_ID",                   :default => 0,     :null => false
    t.integer "CDi_Doc_ID",      :limit => 2, :default => 0,     :null => false
    t.integer "CDi_Lec_ID",      :limit => 2, :default => 0,     :null => false
    t.integer "CDi_Pla_ID",      :limit => 2, :default => 0,     :null => false
    t.integer "CDi_Car_ID",      :limit => 2, :default => 0,     :null => false
    t.boolean "CDi_Condicional",              :default => false, :null => false
    t.date    "CDi_Fecha"
  end

  create_table "coneaumateria", :id => false, :force => true do |t|
    t.integer "CoM_Fac_ID",       :limit => 2,  :default => 0,  :null => false
    t.integer "CoM_Geo_ID",       :limit => 2,  :default => 0,  :null => false
    t.integer "CoM_Lec_ID",       :limit => 2,  :default => 0,  :null => false
    t.integer "CoM_Pla_ID",       :limit => 2,  :default => 0,  :null => false
    t.integer "CoM_Car_ID",       :limit => 2,  :default => 0,  :null => false
    t.string  "CoM_Mat_ID",       :limit => 10, :default => "", :null => false
    t.integer "CoM_Div_ID",       :limit => 2,  :default => 0,  :null => false
    t.integer "CoM_Ctd_ID",       :limit => 2,  :default => 0,  :null => false
    t.integer "CoM_InscriptosC",  :limit => 2
    t.integer "CoM_InscriptosR",  :limit => 2
    t.integer "CoM_BajasC",       :limit => 2
    t.integer "CoM_BajasR",       :limit => 2
    t.integer "CoM_RegularesC",   :limit => 2
    t.integer "CoM_RegularesR",   :limit => 2
    t.integer "CoM_NoRegularesC", :limit => 2
    t.integer "CoM_NoRegularesR", :limit => 2
    t.integer "CoM_PromovidosC",  :limit => 2
    t.integer "CoM_PromovidosR",  :limit => 2
    t.integer "CoM_Aprobados",    :limit => 2
    t.integer "CoM_Desaprobados", :limit => 2
  end

  create_table "consulta", :id => false, :force => true do |t|
    t.integer "IDFacultad",    :limit => 2,   :default => 0,  :null => false
    t.integer "IDPlan",        :limit => 2,   :default => 0,  :null => false
    t.string  "IDMateria",     :limit => 10,  :default => "", :null => false
    t.integer "IDLectivo",     :limit => 2,   :default => 0,  :null => false
    t.integer "IDLlamado",     :limit => 2,   :default => 0,  :null => false
    t.integer "IDDocumento",                  :default => 0,  :null => false
    t.integer "IDTipoDoc",     :limit => 2,   :default => 0,  :null => false
    t.date    "fecha"
    t.time    "hora"
    t.string  "observaciones", :limit => 100
  end

  add_index "consulta", ["IDDocumento"], :name => "IDDocumento"
  add_index "consulta", ["IDFacultad"], :name => "IDFacultad"
  add_index "consulta", ["IDLectivo"], :name => "IDLectivo"
  add_index "consulta", ["IDLlamado"], :name => "IDLlamado"
  add_index "consulta", ["IDMateria"], :name => "IDMateria"
  add_index "consulta", ["IDPlan"], :name => "IDPlan"
  add_index "consulta", ["IDTipoDoc"], :name => "IDTipoDoc"

  create_table "correlativa", :id => false, :force => true do |t|
    t.integer "IDFacultad",          :limit => 2,  :default => 0,     :null => false
    t.integer "IDPlan",              :limit => 2,  :default => 0,     :null => false
    t.integer "IDCarrera",           :limit => 2,  :default => 0,     :null => false
    t.string  "IDMateria",           :limit => 10, :default => "",    :null => false
    t.string  "IDAnterior",          :limit => 10, :default => "",    :null => false
    t.integer "Cor_Lec_ID_Vigencia", :limit => 2,  :default => 0,     :null => false
    t.integer "Cor_Lec_ID_Fin",      :limit => 2,  :default => 0,     :null => false
    t.boolean "Cor_Disyuncion",                    :default => false, :null => false
  end

  add_index "correlativa", ["IDAnterior"], :name => "IDAnterior"
  add_index "correlativa", ["IDCarrera"], :name => "IDCarrera"
  add_index "correlativa", ["IDFacultad"], :name => "IDFacultad"
  add_index "correlativa", ["IDMateria"], :name => "IDMateria"
  add_index "correlativa", ["IDPlan"], :name => "IDPlan"

  create_table "curriculum", :id => false, :force => true do |t|
    t.integer "Cur_Per_ID",                              :default => 0, :null => false
    t.integer "Cur_Doc_ID",          :limit => 2,        :default => 0, :null => false
    t.text    "Cur_TGrado",          :limit => 16777215
    t.text    "Cur_TPosgrado",       :limit => 16777215
    t.text    "Cur_AnioDocente",     :limit => 16777215
    t.text    "Cur_TraDocente",      :limit => 16777215
    t.text    "Cur_ActDocente",      :limit => 16777215
    t.text    "Cur_ActDocenteCar",   :limit => 16777215
    t.text    "Cur_ActDocenteNoCar", :limit => 16777215
    t.text    "Cur_OtraActividad",   :limit => 16777215
    t.text    "Cur_AreaPrincipal",   :limit => 16777215
    t.text    "Cur_Cargo",           :limit => 16777215
    t.text    "Cur_TraProf",         :limit => 16777215
    t.text    "Cur_Investigacion",   :limit => 16777215
    t.text    "Cur_RefBibliog",      :limit => 16777215
    t.text    "Cur_Otros",           :limit => 16777215
  end

  create_table "cursodef", :id => false, :force => true do |t|
    t.integer "CuD_Fac_ID", :limit => 2,  :default => 0,  :null => false
    t.integer "CuD_Lec_ID", :limit => 2,  :default => 0,  :null => false
    t.integer "CuD_Pla_ID", :limit => 2,  :default => 0,  :null => false
    t.integer "CuD_Car_ID", :limit => 2,  :default => 0,  :null => false
    t.string  "CuD_Mat_ID", :limit => 10, :default => "", :null => false
    t.string  "CuD_Desde",  :limit => 5,  :default => "", :null => false
    t.string  "CuD_Hasta",  :limit => 5,  :default => "", :null => false
    t.integer "CuD_Cur_ID", :limit => 2,  :default => 0,  :null => false
    t.integer "CuD_Per_ID", :limit => 2,  :default => 0,  :null => false
    t.integer "CuD_Div_ID", :limit => 2,  :default => 0,  :null => false
  end

  create_table "cursopersona", :id => false, :force => true do |t|
    t.integer "CuP_Per_ID",                     :default => 0, :null => false
    t.integer "CuP_Doc_ID",        :limit => 2, :default => 0, :null => false
    t.integer "CuP_ID",            :limit => 2, :default => 0, :null => false
    t.date    "CuP_Fecha"
    t.integer "CuP_Anho",          :limit => 2, :default => 0, :null => false
    t.integer "CuP_TTi_ID",        :limit => 2, :default => 0, :null => false
    t.integer "CuP_Ins_ID",                     :default => 0, :null => false
    t.string  "CuP_Observaciones"
  end

  create_table "designacion", :primary_key => "Des_ID", :force => true do |t|
    t.string "Des_Nombre", :limit => 50
  end

  create_table "desprofesional", :id => false, :force => true do |t|
    t.integer "DPr_Per_ID",                       :default => 0, :null => false
    t.integer "DPr_Doc_ID",        :limit => 2,   :default => 0, :null => false
    t.integer "DPr_ID",            :limit => 2,   :default => 0, :null => false
    t.string  "DPr_Area",          :limit => 100
    t.string  "DPr_Institucion",   :limit => 150
    t.string  "DPr_Servicio",      :limit => 150
    t.string  "DPr_Cargo",         :limit => 100
    t.integer "DPr_Anho",          :limit => 2
    t.text    "DPr_Observaciones"
  end

  create_table "detinscripcion", :id => false, :force => true do |t|
    t.integer "IDDocumento",                   :default => 0,     :null => false
    t.integer "IDTipoDoc",       :limit => 2,  :default => 0,     :null => false
    t.integer "IDLectivo",       :limit => 2,  :default => 0,     :null => false
    t.integer "IDFacultad",      :limit => 2,  :default => 0,     :null => false
    t.integer "IDPlan",          :limit => 2,  :default => 0,     :null => false
    t.string  "IDMateria",       :limit => 10, :default => "",    :null => false
    t.integer "DIn_Cur_ID",      :limit => 2,  :default => 0,     :null => false
    t.integer "DIn_Per_ID",      :limit => 2,  :default => 0,     :null => false
    t.integer "DIn_Div_ID",      :limit => 2,  :default => 0,     :null => false
    t.string  "DIn_Barras",      :limit => 50
    t.boolean "DIn_Recursa",                   :default => false, :null => false
    t.boolean "DIn_Imprimir",                  :default => false, :null => false
    t.boolean "DIn_Moroso",                    :default => false, :null => false
    t.boolean "DIn_Libre",                     :default => false, :null => false
    t.boolean "DIn_Condicional",               :default => false, :null => false
  end

  add_index "detinscripcion", ["DIn_Cur_ID"], :name => "Curso"
  add_index "detinscripcion", ["DIn_Div_ID"], :name => "IDDivision"
  add_index "detinscripcion", ["DIn_Imprimir"], :name => "DIn_Imprimir"
  add_index "detinscripcion", ["DIn_Per_ID"], :name => "Periodo"
  add_index "detinscripcion", ["IDDocumento"], :name => "IDDocumento"
  add_index "detinscripcion", ["IDFacultad"], :name => "IDFacultad"
  add_index "detinscripcion", ["IDLectivo"], :name => "IDLectivo"
  add_index "detinscripcion", ["IDMateria"], :name => "IDMateria"
  add_index "detinscripcion", ["IDPlan"], :name => "IDPlan"
  add_index "detinscripcion", ["IDTipoDoc"], :name => "IDTipoDoc"

  create_table "detintercripcion", :id => false, :force => true do |t|
    t.integer "DIt_Fac_ID",  :limit => 2,  :default => 0,  :null => false
    t.integer "DIt_Lec_ID",  :limit => 2,  :default => 0,  :null => false
    t.integer "DIt_Per_ID",                :default => 0,  :null => false
    t.integer "DIt_Doc_ID",  :limit => 2,  :default => 0,  :null => false
    t.integer "DIt_Pla_ID",  :limit => 2,  :default => 0,  :null => false
    t.string  "DIt_Mat_ID",  :limit => 10, :default => "", :null => false
    t.integer "DIt_Curso",   :limit => 2
    t.integer "DIt_Periodo", :limit => 2
    t.integer "DIt_Div_ID",  :limit => 2
    t.integer "DIt_ID",                                    :null => false
  end

  add_index "detintercripcion", ["DIt_Curso"], :name => "DIt_Curso"
  add_index "detintercripcion", ["DIt_Div_ID"], :name => "DIt_Div_ID"
  add_index "detintercripcion", ["DIt_ID"], :name => "DIt_ID"
  add_index "detintercripcion", ["DIt_Periodo"], :name => "DIt_Periodo"

  create_table "dia", :primary_key => "IDDia", :force => true do |t|
    t.string "Nombre", :limit => 15
  end

  add_index "dia", ["IDDia"], :name => "IDDia"

  create_table "division", :id => false, :force => true do |t|
    t.integer "IDFacultad", :limit => 2,  :default => 0,  :null => false
    t.integer "IDDivision", :limit => 2,  :default => 0,  :null => false
    t.string  "Nombre",     :limit => 35, :default => "", :null => false
  end

  add_index "division", ["IDDivision"], :name => "IDFacultad"
  add_index "division", ["IDFacultad"], :name => "IDFacultad1"
  add_index "division", ["Nombre"], :name => "Nombre"

  create_table "documento", :primary_key => "IDTipoDoc", :force => true do |t|
    t.string "nombre", :limit => 20, :default => "", :null => false
  end

  add_index "documento", ["IDTipoDoc"], :name => "IDTipoDoc"
  add_index "documento", ["nombre"], :name => "nombre"

  create_table "domicilio", :id => false, :force => true do |t|
    t.integer  "IDDocumento",                  :default => 0,  :null => false
    t.integer  "IDTipoDoc",     :limit => 2,   :default => 0,  :null => false
    t.datetime "fecha",                                        :null => false
    t.string   "calle",         :limit => 100, :default => "", :null => false
    t.string   "puerta",        :limit => 10,                  :null => false
    t.string   "piso",          :limit => 10,                  :null => false
    t.string   "dpto",          :limit => 5,                   :null => false
    t.string   "telefono",      :limit => 100,                 :null => false
    t.string   "observaciones", :limit => 100,                 :null => false
    t.string   "codpostal",     :limit => 10,                  :null => false
    t.integer  "Dom_Fac_ID",    :limit => 2,   :default => 1,  :null => false
    t.integer  "IDProvincia",   :limit => 2,   :default => 0,  :null => false
    t.integer  "IDLocalidad",   :limit => 2,   :default => 0,  :null => false
    t.string   "Dom_e_mail",    :limit => 100,                 :null => false
    t.string   "Dom_laboral",   :limit => 100,                 :null => false
    t.integer  "clave",                                        :null => false
  end

  add_index "domicilio", ["IDDocumento", "IDTipoDoc", "fecha"], :name => "viejo", :unique => true
  add_index "domicilio", ["IDDocumento"], :name => "IDDocumento"
  add_index "domicilio", ["IDLocalidad"], :name => "IDLocalidad"
  add_index "domicilio", ["IDProvincia"], :name => "IDProvincia"
  add_index "domicilio", ["IDTipoDoc"], :name => "IDTipoDoc"
  add_index "domicilio", ["calle"], :name => "calle"
  add_index "domicilio", ["clave"], :name => "clave"

  create_table "domiciliohist", :id => false, :force => true do |t|
    t.integer   "IDDocumento",                  :default => 0,  :null => false
    t.integer   "IDTipoDoc",     :limit => 2,   :default => 0,  :null => false
    t.timestamp "fecha",                                        :null => false
    t.string    "calle",         :limit => 100, :default => "", :null => false
    t.string    "puerta",        :limit => 10
    t.string    "piso",          :limit => 10
    t.string    "dpto",          :limit => 5
    t.string    "telefono",      :limit => 100
    t.string    "observaciones", :limit => 100
    t.string    "codpostal",     :limit => 10
    t.integer   "Dom_Fac_ID",    :limit => 2,   :default => 1,  :null => false
    t.integer   "IDProvincia",   :limit => 2,   :default => 0
    t.integer   "IDLocalidad",   :limit => 2,   :default => 0
    t.string    "Dom_e_mail",    :limit => 100
    t.string    "Dom_laboral",   :limit => 100
  end

  add_index "domiciliohist", ["IDDocumento"], :name => "IDDocumento"
  add_index "domiciliohist", ["IDLocalidad"], :name => "IDLocalidad"
  add_index "domiciliohist", ["IDProvincia"], :name => "IDProvincia"
  add_index "domiciliohist", ["IDTipoDoc"], :name => "IDTipoDoc"
  add_index "domiciliohist", ["calle"], :name => "calle"

  create_table "equivalencia", :id => false, :force => true do |t|
    t.integer "Equ_Fac_ID",     :limit => 2,  :default => 0,  :null => false
    t.integer "Equ_Pla_ID",     :limit => 2,  :default => 0,  :null => false
    t.integer "Equ_Car_ID",     :limit => 2,  :default => 0,  :null => false
    t.string  "Equ_Mat_ID",     :limit => 10, :default => "", :null => false
    t.integer "Equ_Pla_ID_Eqv", :limit => 2,  :default => 0,  :null => false
    t.integer "Equ_Car_ID_Eqv", :limit => 2,  :default => 0,  :null => false
    t.string  "Equ_Mat_ID_Eqv", :limit => 10, :default => "", :null => false
    t.integer "id",                                           :null => false
  end

  add_index "equivalencia", ["Equ_Car_ID"], :name => "Equ_Car_ID"
  add_index "equivalencia", ["Equ_Fac_ID"], :name => "Equ_Fac_ID"
  add_index "equivalencia", ["Equ_Mat_ID"], :name => "Equ_Mat_ID"
  add_index "equivalencia", ["Equ_Pla_ID"], :name => "Equ_Pla_ID"
  add_index "equivalencia", ["id"], :name => "id"

  create_table "escala", :id => false, :force => true do |t|
    t.integer "Esc_Fac_ID", :limit => 2,   :default => 0, :null => false
    t.integer "Esc_ID",     :limit => 2,   :default => 0, :null => false
    t.string  "Esc_Nombre", :limit => 250,                :null => false
    t.date    "Esc_Desde",                                :null => false
    t.date    "Esc_Hasta",                                :null => false
  end

  create_table "escalaconversion", :id => false, :force => true do |t|
    t.integer "ECo_Fac_ID",     :limit => 2,  :default => 0, :null => false
    t.integer "ECo_Esc_ID",     :limit => 2,  :default => 0, :null => false
    t.string  "ECo_Calif",      :limit => 10,                :null => false
    t.integer "ECo_Esc_ID_Ant", :limit => 2,  :default => 0, :null => false
    t.string  "ECo_Calif_Ant",  :limit => 10,                :null => false
    t.integer "ID",                                          :null => false
  end

  add_index "escalaconversion", ["ID"], :name => "ID"

  create_table "escalanota", :id => false, :force => true do |t|
    t.integer "ENo_Fac_ID",      :limit => 2,   :default => 0,   :null => false
    t.integer "ENo_Esc_ID",      :limit => 2,   :default => 0,   :null => false
    t.string  "ENo_Calif",       :limit => 10,  :default => "",  :null => false
    t.integer "ENo_EMa_ID",      :limit => 2,   :default => 3,   :null => false
    t.string  "ENo_Descripcion", :limit => 250, :default => "",  :null => false
    t.float   "ENo_PorcDesde",                  :default => 0.0, :null => false
    t.float   "ENo_PorcHasta",                  :default => 0.0, :null => false
    t.integer "ID",                                              :null => false
  end

  add_index "escalanota", ["ID"], :name => "id"

  create_table "estacainter", :id => false, :force => true do |t|
    t.integer "EAI_Fac_ID",   :limit => 2,  :default => 0,     :null => false
    t.integer "EAI_Per_ID",                 :default => 0,     :null => false
    t.integer "EAI_Doc_ID",   :limit => 2,  :default => 0,     :null => false
    t.integer "EAI_Pla_ID",   :limit => 2,  :default => 0,     :null => false
    t.string  "EAI_Mat_ID",   :limit => 10, :default => "",    :null => false
    t.integer "EAI_Curso",    :limit => 2,  :default => 0
    t.boolean "EAI_Aprobada",               :default => false, :null => false
  end

  add_index "estacainter", ["EAI_Aprobada"], :name => "eai_aprobada"

  create_table "estacamulti", :id => false, :force => true do |t|
    t.integer "EAM_Fac_ID",   :limit => 2,  :default => 0,    :null => false
    t.integer "EAM_Per_ID",                 :default => 0,    :null => false
    t.integer "EAM_Doc_ID",   :limit => 2,  :default => 0,    :null => false
    t.integer "EAM_Pla_ID",   :limit => 2,  :default => 0,    :null => false
    t.string  "EAM_Mat_ID",   :limit => 10, :default => "",   :null => false
    t.integer "EAM_Est_ID",   :limit => 2,  :default => 0,    :null => false
    t.integer "EAM_Curso",    :limit => 2
    t.string  "EAM_Libro",    :limit => 5
    t.integer "EAM_Folio",    :limit => 2
    t.boolean "EAM_Imprimir",               :default => true, :null => false
  end

  add_index "estacamulti", ["EAM_Folio"], :name => "eam_folio"
  add_index "estacamulti", ["EAM_Libro"], :name => "eam_libro"

  create_table "estado", :id => false, :force => true do |t|
    t.integer "IDFacultad",  :limit => 2, :default => 0, :null => false
    t.integer "IDDocumento",              :default => 0, :null => false
    t.integer "IDTipoDoc",   :limit => 2, :default => 0, :null => false
    t.integer "IDEstado",    :limit => 2, :default => 0, :null => false
    t.date    "fecha",                                   :null => false
  end

  add_index "estado", ["IDEstado"], :name => "IDEstado"

  create_table "estado_historico", :id => false, :force => true do |t|
    t.integer "IDFacultad",  :limit => 2, :default => 0, :null => false
    t.integer "IDDocumento",              :default => 0, :null => false
    t.integer "IDTipoDoc",   :limit => 2, :default => 0, :null => false
    t.date    "fecha",                                   :null => false
    t.integer "IDEstado",    :limit => 2, :default => 0, :null => false
  end

  create_table "estalumno", :primary_key => "IDEstado", :force => true do |t|
    t.string "Nombre",        :limit => 50
    t.string "EsA_Iniciales", :limit => 5
  end

  add_index "estalumno", ["IDEstado"], :name => "IDEstado"

  create_table "estante", :id => false, :force => true do |t|
    t.integer "EAn_Fac_ID",  :limit => 2, :default => 0, :null => false
    t.integer "EAn_Per_ID",               :default => 0, :null => false
    t.integer "EAn_Doc_ID",  :limit => 2, :default => 0, :null => false
    t.integer "EAn_Lec_ID",  :limit => 2, :default => 0, :null => false
    t.integer "EAn_Pla_ID",  :limit => 2, :default => 0, :null => false
    t.integer "EAn_Car_ID",  :limit => 2, :default => 0, :null => false
    t.integer "EAn_Ingreso", :limit => 2, :default => 0, :null => false
    t.integer "EAn_MatApro", :limit => 2, :default => 0, :null => false
  end

  create_table "estmateria", :primary_key => "IDEstado", :force => true do |t|
    t.string "Nombre", :limit => 20
  end

  add_index "estmateria", ["IDEstado"], :name => "IDEstado"

  create_table "estrend", :id => false, :force => true do |t|
    t.integer "ERe_Fac_ID",  :limit => 2, :default => 0, :null => false
    t.integer "ERe_Per_ID",               :default => 0, :null => false
    t.integer "ERe_Doc_ID",  :limit => 2, :default => 0, :null => false
    t.integer "ERe_Lec_ID",  :limit => 2, :default => 0, :null => false
    t.integer "ERe_Pla_ID",  :limit => 2, :default => 0, :null => false
    t.integer "ERe_Car_ID",  :limit => 2, :default => 0, :null => false
    t.integer "ERe_Ingreso", :limit => 2, :default => 0, :null => false
    t.integer "ERe_MatRend", :limit => 2, :default => 0, :null => false
  end

  create_table "esttotal", :id => false, :force => true do |t|
    t.integer "ETo_Fac_ID",  :limit => 2, :default => 0, :null => false
    t.integer "ETo_Per_ID",               :default => 0, :null => false
    t.integer "ETo_Doc_ID",  :limit => 2, :default => 0, :null => false
    t.integer "ETo_Lec_ID",  :limit => 2, :default => 0, :null => false
    t.integer "ETo_Pla_ID",  :limit => 2, :default => 0, :null => false
    t.integer "ETo_Car_ID",  :limit => 2, :default => 0, :null => false
    t.integer "ETo_Ingreso", :limit => 2, :default => 0, :null => false
    t.integer "ETo_MatApro", :limit => 2, :default => 0, :null => false
  end

  create_table "evalhabil", :primary_key => "EHa_ID", :force => true do |t|
    t.integer "EHa_Fac_ID",      :limit => 2,   :default => 0,  :null => false
    t.integer "EHa_Lec_ID",      :limit => 2,   :default => 0,  :null => false
    t.integer "EHa_Pla_ID",      :limit => 2,   :default => 0,  :null => false
    t.string  "EHa_Mat_ID",      :limit => 5,   :default => "", :null => false
    t.date    "EHa_Fecha",                                      :null => false
    t.integer "EHa_ETi_ID",      :limit => 2,   :default => 0,  :null => false
    t.string  "EHa_Descripcion", :limit => 200
  end

  add_index "evalhabil", ["EHa_Fac_ID", "EHa_Lec_ID", "EHa_Pla_ID", "EHa_Mat_ID", "EHa_Fecha"], :name => "EHa_Fac_ID", :unique => true

  create_table "evalinscobs", :id => false, :force => true do |t|
    t.integer "EIO_Fac_ID", :limit => 2, :default => 0,  :null => false
    t.integer "EIO_Lec_ID", :limit => 2, :default => 0,  :null => false
    t.integer "EIO_Pla_ID", :limit => 2, :default => 0,  :null => false
    t.string  "EIO_Mat_ID", :limit => 5, :default => "", :null => false
    t.date    "EIO_Fecha",                               :null => false
    t.integer "EIO_Per_ID",              :default => 0,  :null => false
    t.integer "EIO_Doc_ID", :limit => 2, :default => 0,  :null => false
    t.string  "EIO_Observ"
  end

  create_table "evalinscrip", :id => false, :force => true do |t|
    t.integer "EIn_Fac_ID",     :limit => 2, :default => 0,     :null => false
    t.integer "EIn_Lec_ID",     :limit => 2, :default => 0,     :null => false
    t.integer "EIn_Pla_ID",     :limit => 2, :default => 0,     :null => false
    t.string  "EIn_Mat_ID",     :limit => 5, :default => "",    :null => false
    t.date    "EIn_Fecha",                                      :null => false
    t.integer "EIn_Per_ID",                  :default => 0,     :null => false
    t.integer "EIn_Doc_ID",     :limit => 2, :default => 0,     :null => false
    t.boolean "EIn_Habilitado",              :default => false
    t.boolean "EIn_Verificado",              :default => false
    t.integer "EIn_OIn_ID",     :limit => 2
  end

  create_table "evaltipo", :primary_key => "ETi_ID", :force => true do |t|
    t.string "ETi_Nombre", :limit => 50, :default => "", :null => false
  end

  create_table "exadeu", :id => false, :force => true do |t|
    t.integer "ExD_Fac_ID", :limit => 2, :default => 0,  :null => false
    t.integer "ExD_Lec_ID", :limit => 2, :default => 0,  :null => false
    t.integer "ExD_Lla_ID", :limit => 2, :default => 0,  :null => false
    t.integer "ExD_Per_ID",              :default => 0,  :null => false
    t.integer "ExD_Doc_ID", :limit => 2, :default => 0,  :null => false
    t.integer "ExD_Pla_ID", :limit => 2, :default => 0,  :null => false
    t.string  "ExD_Mat_ID", :limit => 5, :default => "", :null => false
    t.date    "ExD_Fecha"
    t.integer "ExD_Geo_ID", :limit => 2
    t.float   "ExD_Deuda"
  end

  create_table "exateso", :id => false, :force => true do |t|
    t.integer "ExT_Fac_ID", :limit => 2, :default => 0, :null => false
    t.integer "ExT_Per_ID",              :default => 0, :null => false
    t.integer "ExT_Doc_ID", :limit => 2, :default => 0, :null => false
    t.integer "ExT_Lec_ID", :limit => 2, :default => 0, :null => false
    t.integer "ExT_Lla_ID", :limit => 2, :default => 0, :null => false
  end

  create_table "facultad", :primary_key => "IDFacultad", :force => true do |t|
    t.string "Nombre",    :limit => 50, :default => "", :null => false
    t.string "Fac_Acron", :limit => 20, :default => "", :null => false
  end

  add_index "facultad", ["IDFacultad"], :name => "IDFacultad"
  add_index "facultad", ["Nombre"], :name => "Nombre"

  create_table "facuniversidad", :id => false, :force => true do |t|
    t.integer "FUn_Uni_ID", :limit => 2,  :default => 0, :null => false
    t.integer "FUn_ID",     :limit => 2,  :default => 0, :null => false
    t.string  "FUn_Nombre", :limit => 50
  end

  add_index "facuniversidad", ["FUn_ID"], :name => "FUn_ID"
  add_index "facuniversidad", ["FUn_Uni_ID"], :name => "FUn_Uni_ID"

  create_table "familia", :id => false, :force => true do |t|
    t.integer "Fam_Per_ID",                        :default => 0,    :null => false
    t.integer "Fam_Doc_ID",          :limit => 2,  :default => 0,    :null => false
    t.integer "Fam_Per_ID_Pariente",               :default => 0,    :null => false
    t.integer "Fam_Doc_ID_Pariente", :limit => 2,  :default => 0,    :null => false
    t.integer "Fam_Par_ID",          :limit => 2,  :default => 0
    t.string  "Fam_Apellido",        :limit => 30
    t.string  "Fam_Nombre",          :limit => 30
    t.string  "Fam_Sexo",            :limit => 1
    t.integer "Fam_Pro_ID",          :limit => 2,  :default => 0
    t.boolean "Fam_Vive",                          :default => true, :null => false
  end

  create_table "feriado", :primary_key => "Fer_Fecha", :force => true do |t|
    t.string  "Fer_Concepto", :limit => 250, :default => "", :null => false
    t.integer "clave",                                       :null => false
  end

  add_index "feriado", ["clave"], :name => "clave"

  create_table "folio", :id => false, :force => true do |t|
    t.integer "Fol_Fac_ID",    :limit => 2, :default => 0,     :null => false
    t.string  "Fol_Lib_ID",    :limit => 5, :default => "",    :null => false
    t.integer "Fol_ID",        :limit => 2, :default => 0,     :null => false
    t.boolean "Fol_Bloqueado",              :default => false, :null => false
    t.integer "Fol_Pla_ID",    :limit => 2
    t.string  "Fol_Mat_ID",    :limit => 5
    t.integer "Fol_Lec_ID",    :limit => 2
    t.integer "Fol_Lla_ID",    :limit => 2
  end

  add_index "folio", ["Fol_Bloqueado"], :name => "Fol_Bloqueado"
  add_index "folio", ["Fol_Fac_ID"], :name => "Fol_Fac_ID"
  add_index "folio", ["Fol_ID"], :name => "Fol_ID"
  add_index "folio", ["Fol_Lib_ID"], :name => "Fol_Lib_ID"

  create_table "geografica", :primary_key => "Geo_ID", :force => true do |t|
    t.string "Geo_Nombre",    :limit => 40
    t.string "Geo_Iniciales", :limit => 10
  end

  add_index "geografica", ["Geo_ID"], :name => "Geo_ID"

  create_table "geollamado", :id => false, :force => true do |t|
    t.integer "GLl_Fac_ID", :limit => 2, :default => 0, :null => false
    t.integer "GLl_Geo_ID", :limit => 2, :default => 0, :null => false
    t.integer "GLl_Lec_ID", :limit => 2, :default => 0, :null => false
    t.integer "GLl_Lla_ID", :limit => 2, :default => 0, :null => false
  end

  create_table "horario", :primary_key => "clave", :force => true do |t|
    t.integer "Hor_Fac_ID", :limit => 2,  :default => 0,                     :null => false
    t.integer "Hor_Lec_ID", :limit => 2,  :default => 0,                     :null => false
    t.integer "Hor_Geo_ID", :limit => 2,  :default => 0,                     :null => false
    t.integer "Hor_Dia",    :limit => 2,  :default => 0,                     :null => false
    t.time    "Hor_Inicio",               :default => '2000-01-01 00:00:00', :null => false
    t.time    "Hor_Fin",                  :default => '2000-01-01 00:00:00', :null => false
    t.integer "Hor_Curso",  :limit => 2,  :default => 0,                     :null => false
    t.integer "Hor_Prd_ID", :limit => 2,  :default => 0,                     :null => false
    t.integer "Hor_Div_ID", :limit => 2,  :default => 0,                     :null => false
    t.integer "Hor_Pla_ID", :limit => 2,  :default => 0,                     :null => false
    t.string  "Hor_Mat_ID", :limit => 10, :default => "",                    :null => false
    t.integer "Hor_Doc_ID", :limit => 2,  :default => 0,                     :null => false
    t.integer "Hor_Per_ID",               :default => 0,                     :null => false
  end

  add_index "horario", ["Hor_Fac_ID", "Hor_Lec_ID", "Hor_Geo_ID", "Hor_Dia", "Hor_Inicio", "Hor_Curso", "Hor_Prd_ID", "Hor_Div_ID"], :name => "Hor_Fac_ID"
  add_index "horario", ["Hor_Fac_ID", "Hor_Lec_ID", "Hor_Geo_ID", "Hor_Doc_ID", "Hor_Per_ID"], :name => "Profesor"
  add_index "horario", ["Hor_Fac_ID", "Hor_Lec_ID", "Hor_Geo_ID", "Hor_Pla_ID", "Hor_Mat_ID"], :name => "Materia"

  create_table "inscriex", :id => false, :force => true do |t|
    t.integer "IDDocumento",                  :default => 0,     :null => false
    t.integer "IDTipoDoc",      :limit => 2,  :default => 0,     :null => false
    t.integer "IDFacultad",     :limit => 2,  :default => 0,     :null => false
    t.integer "IDLectivo",      :limit => 2,  :default => 0,     :null => false
    t.integer "IDLlamado",      :limit => 2,  :default => 0,     :null => false
    t.integer "IDPlan",         :limit => 2,  :default => 0,     :null => false
    t.string  "IDMateria",      :limit => 10, :default => "",    :null => false
    t.date    "fecha",                                           :null => false
    t.time    "hora",                                            :null => false
    t.boolean "verif",                        :default => false, :null => false
    t.boolean "inscr",                        :default => false, :null => false
    t.integer "obser",          :limit => 2,  :default => 0,     :null => false
    t.integer "IEx_Orden",      :limit => 2,  :default => 1,     :null => false
    t.boolean "IEx_Bloqueado",                :default => false, :null => false
    t.boolean "IEx_Secretaria",               :default => false, :null => false
    t.integer "id",                                              :null => false
  end

  add_index "inscriex", ["IDDocumento"], :name => "IDDocumento"
  add_index "inscriex", ["IDFacultad"], :name => "IDFacultad"
  add_index "inscriex", ["IDLectivo"], :name => "IDLectivo"
  add_index "inscriex", ["IDLlamado"], :name => "IDLlamado"
  add_index "inscriex", ["IDMateria"], :name => "IDMateria"
  add_index "inscriex", ["IDPlan"], :name => "IDPlan"
  add_index "inscriex", ["IDTipoDoc"], :name => "IDTipoDoc"
  add_index "inscriex", ["fecha"], :name => "fecha"
  add_index "inscriex", ["hora"], :name => "hora"
  add_index "inscriex", ["id"], :name => "id"
  add_index "inscriex", ["inscr"], :name => "inscr"
  add_index "inscriex", ["verif"], :name => "verif"

  create_table "inscriexb", :primary_key => "IEB_ID", :force => true do |t|
    t.integer   "IEB_Fac_ID", :limit => 2,  :default => 0,  :null => false
    t.integer   "IEB_Per_ID",               :default => 0,  :null => false
    t.integer   "IEB_Doc_ID", :limit => 2,  :default => 0,  :null => false
    t.integer   "IEB_Lec_ID", :limit => 2,  :default => 0,  :null => false
    t.integer   "IEB_Lla_ID", :limit => 2,  :default => 0,  :null => false
    t.integer   "IEB_Pla_ID", :limit => 2,  :default => 0,  :null => false
    t.string    "IEB_Mat_ID", :limit => 10, :default => "", :null => false
    t.timestamp "IEB_fecha",                                :null => false
  end

  add_index "inscriexb", ["IEB_Fac_ID", "IEB_Per_ID", "IEB_Doc_ID", "IEB_Lec_ID", "IEB_Lla_ID", "IEB_Pla_ID", "IEB_Mat_ID"], :name => "IEB_Fac_ID"

  create_table "inscriexcom", :id => false, :force => true do |t|
    t.integer "IDDocumento",               :default => 0,  :null => false
    t.integer "IDTipoDoc",   :limit => 2,  :default => 0,  :null => false
    t.integer "IDFacultad",  :limit => 2,  :default => 0,  :null => false
    t.integer "IDLectivo",   :limit => 2,  :default => 0,  :null => false
    t.integer "IDLlamado",   :limit => 2,  :default => 0,  :null => false
    t.integer "IDPlan",      :limit => 2,  :default => 0,  :null => false
    t.string  "IDMateria",   :limit => 10, :default => "", :null => false
    t.string  "comen"
  end

  add_index "inscriexcom", ["IDDocumento"], :name => "IDDocumento"
  add_index "inscriexcom", ["IDFacultad"], :name => "IDFacultad"
  add_index "inscriexcom", ["IDLectivo"], :name => "IDLectivo"
  add_index "inscriexcom", ["IDLlamado"], :name => "IDLlamado"
  add_index "inscriexcom", ["IDMateria"], :name => "IDMateria"
  add_index "inscriexcom", ["IDPlan"], :name => "IDPlan"
  add_index "inscriexcom", ["IDTipoDoc"], :name => "IDTipoDoc"

  create_table "inscripcion", :id => false, :force => true do |t|
    t.integer "IDFacultad",        :limit => 2,   :default => 0,     :null => false
    t.integer "IDDocumento",                      :default => 0,     :null => false
    t.integer "IDTipoDoc",         :limit => 2,   :default => 0,     :null => false
    t.integer "IDLectivo",         :limit => 2,   :default => 0,     :null => false
    t.date    "Fecha"
    t.string  "Chequera",          :limit => 15
    t.string  "Matricula",         :limit => 15
    t.integer "Factura",                          :default => 0
    t.integer "Curso",             :limit => 2,   :default => 0
    t.integer "Ins_Pla_ID",        :limit => 2,   :default => 0
    t.integer "Ins_Car_ID",        :limit => 2,   :default => 0
    t.integer "Ins_Geo_ID",        :limit => 2,   :default => 0
    t.boolean "Ins_Asentado",                     :default => false, :null => false
    t.boolean "Ins_Provisoria",                   :default => false, :null => false
    t.string  "Ins_Barras",        :limit => 50
    t.integer "Ins_Cohorte",       :limit => 2,   :default => 0,     :null => false
    t.boolean "Ins_Remota",                       :default => false, :null => false
    t.boolean "Ins_Imprimir",                     :default => false, :null => false
    t.integer "Ins_Edad",          :limit => 2,   :default => 0,     :null => false
    t.string  "Ins_Observaciones", :limit => 250
    t.integer "Ins_OffsetPago",    :limit => 2,   :default => 0,     :null => false
  end

  add_index "inscripcion", ["Curso"], :name => "Curso"
  add_index "inscripcion", ["IDDocumento"], :name => "IDDocumento"
  add_index "inscripcion", ["IDFacultad"], :name => "IDFacultad"
  add_index "inscripcion", ["IDLectivo"], :name => "IDLectivo"
  add_index "inscripcion", ["IDTipoDoc"], :name => "IDTipoDoc"
  add_index "inscripcion", ["Ins_Car_ID"], :name => "Ins_Car_ID"
  add_index "inscripcion", ["Ins_Cohorte"], :name => "ins_cohorte"
  add_index "inscripcion", ["Ins_Geo_ID"], :name => "Ins_Geo_ID"
  add_index "inscripcion", ["Ins_Imprimir"], :name => "Ins_Imprimir"
  add_index "inscripcion", ["Ins_Pla_ID"], :name => "Ins_Pla_ID"

  create_table "inscripcionbak", :id => false, :force => true do |t|
    t.integer "Ins_Fac_ID",        :limit => 2,   :default => 0,     :null => false
    t.integer "Ins_Per_ID",                       :default => 0,     :null => false
    t.integer "Ins_Doc_ID",        :limit => 2,   :default => 0,     :null => false
    t.integer "Ins_Lec_ID",        :limit => 2,   :default => 0,     :null => false
    t.date    "Ins_Fecha"
    t.string  "Ins_Chequera",      :limit => 15
    t.string  "Ins_Matricula",     :limit => 15
    t.integer "Ins_Factura"
    t.integer "Ins_Curso",         :limit => 2,   :default => 0,     :null => false
    t.integer "Ins_Pla_ID",        :limit => 2,   :default => 0,     :null => false
    t.integer "Ins_Car_ID",        :limit => 2,   :default => 0,     :null => false
    t.integer "Ins_Geo_ID",        :limit => 2,   :default => 0,     :null => false
    t.boolean "Ins_Asentado",                     :default => false, :null => false
    t.boolean "Ins_Provisoria",                   :default => false, :null => false
    t.string  "Ins_Barras",        :limit => 50
    t.integer "Ins_Cohorte",       :limit => 2,   :default => 0,     :null => false
    t.boolean "Ins_Remota",                       :default => false, :null => false
    t.boolean "Ins_Imprimir",                     :default => false, :null => false
    t.string  "Ins_Observaciones", :limit => 250
  end

  create_table "institucion", :id => false, :force => true do |t|
    t.integer "Ins_TTi_ID", :limit => 2,   :default => 0,  :null => false
    t.integer "Ins_ID",                    :default => 0,  :null => false
    t.string  "Ins_Nombre", :limit => 250, :default => "", :null => false
  end

  create_table "intercripcion", :id => false, :force => true do |t|
    t.integer "Int_Fac_ID",    :limit => 2, :default => 0,     :null => false
    t.integer "Int_Lec_ID",    :limit => 2, :default => 0,     :null => false
    t.integer "Int_Per_ID",                 :default => 0,     :null => false
    t.integer "Int_Doc_ID",    :limit => 2, :default => 0,     :null => false
    t.date    "Int_Fecha",                                     :null => false
    t.integer "Int_Curso",     :limit => 2, :default => 0,     :null => false
    t.integer "Int_Pla_ID",    :limit => 2,                    :null => false
    t.integer "Int_Car_ID",    :limit => 2,                    :null => false
    t.integer "Int_Geo_ID",    :limit => 2,                    :null => false
    t.boolean "Int_Bloqueado",              :default => false, :null => false
    t.integer "Int_ID",                                        :null => false
  end

  add_index "intercripcion", ["Int_Car_ID"], :name => "Int_Car_ID"
  add_index "intercripcion", ["Int_Curso"], :name => "Int_Curso"
  add_index "intercripcion", ["Int_Geo_ID"], :name => "Int_Geo_ID"
  add_index "intercripcion", ["Int_ID"], :name => "Int_ID"
  add_index "intercripcion", ["Int_Pla_ID"], :name => "Int_Pla_ID"

  create_table "intercurso", :id => false, :force => true do |t|
    t.integer "ICu_Fac_ID", :limit => 2, :default => 0, :null => false
    t.integer "ICu_Lec_ID", :limit => 2, :default => 0, :null => false
    t.integer "ICu_Per_ID",              :default => 0, :null => false
    t.integer "ICu_Doc_ID", :limit => 2, :default => 0, :null => false
    t.integer "ICu_Curso",  :limit => 2, :default => 0, :null => false
    t.integer "ICu_ID",                                 :null => false
  end

  add_index "intercurso", ["ICu_ID"], :name => "ICu_ID"

  create_table "intermateria", :id => false, :force => true do |t|
    t.integer "IMa_Fac_ID", :limit => 2,  :default => 0,  :null => false
    t.integer "IMa_Lec_ID", :limit => 2,  :default => 0,  :null => false
    t.integer "IMa_Per_ID",               :default => 0,  :null => false
    t.integer "IMa_Doc_ID", :limit => 2,  :default => 0,  :null => false
    t.integer "IMa_Curso",  :limit => 2,  :default => 0,  :null => false
    t.integer "IMa_Pla_ID", :limit => 2,  :default => 0,  :null => false
    t.string  "IMa_Mat_ID", :limit => 10, :default => "", :null => false
    t.integer "IMa_ID",                                   :null => false
  end

  add_index "intermateria", ["IMa_ID"], :name => "IMa_ID"

  create_table "investigacion", :id => false, :force => true do |t|
    t.integer "Inv_Per_ID",                    :default => 0, :null => false
    t.integer "Inv_Doc_ID",     :limit => 2,   :default => 0, :null => false
    t.integer "Inv_ID",         :limit => 2,   :default => 0, :null => false
    t.string  "Inv_Area",       :limit => 100
    t.string  "Inv_Organismo",  :limit => 150
    t.string  "Inv_Categoria",  :limit => 100
    t.string  "Inv_Disciplina", :limit => 100
  end

  create_table "irregular", :id => false, :force => true do |t|
    t.integer "Irr_Fac_ID",        :limit => 2,   :default => 0,     :null => false
    t.integer "Irr_Per_ID",                       :default => 0,     :null => false
    t.integer "Irr_Doc_ID",        :limit => 2,   :default => 0,     :null => false
    t.integer "Irr_Lec_ID",        :limit => 2,   :default => 0,     :null => false
    t.date    "Irr_Fecha"
    t.boolean "Irr_Irregular",                    :default => false, :null => false
    t.string  "Irr_Observaciones", :limit => 100
  end

  add_index "irregular", ["Irr_Doc_ID"], :name => "Irr_Doc_ID"
  add_index "irregular", ["Irr_Fac_ID"], :name => "Irr_Fac_ID"
  add_index "irregular", ["Irr_Irregular"], :name => "Irr_Irregular"
  add_index "irregular", ["Irr_Lec_ID"], :name => "Irr_Lec_ID"
  add_index "irregular", ["Irr_Per_ID"], :name => "Irr_Per_ID"

  create_table "irrpolitica", :id => false, :force => true do |t|
    t.integer "IPo_Fac_ID",        :limit => 2,   :default => 0,  :null => false
    t.integer "IPo_Lec_ID",        :limit => 2,   :default => 0,  :null => false
    t.integer "IPo_Cantidad",      :limit => 2,   :default => 0,  :null => false
    t.date    "IPo_Fecha",                                        :null => false
    t.string  "IPo_Observaciones", :limit => 100, :default => "", :null => false
  end

  create_table "lectivo", :primary_key => "IDLectivo", :force => true do |t|
    t.string  "nombre",       :limit => 50
    t.date    "fecini"
    t.date    "fecfin"
    t.integer "Lec_Reducido", :limit => 2
  end

  add_index "lectivo", ["IDLectivo"], :name => "IDLectivo"
  add_index "lectivo", ["fecini"], :name => "fecini"

  create_table "legcarrera", :id => false, :force => true do |t|
    t.integer "LgC_Fac_ID", :limit => 2, :default => 0, :null => false
    t.integer "LgC_Lec_ID", :limit => 2, :default => 0, :null => false
    t.integer "LgC_Geo_ID", :limit => 2, :default => 0, :null => false
    t.integer "LgC_Pla_ID", :limit => 2, :default => 0, :null => false
    t.integer "LgC_Car_ID", :limit => 2, :default => 0, :null => false
    t.integer "LgC_LgP_ID", :limit => 2, :default => 0, :null => false
  end

  create_table "legpolitica", :id => false, :force => true do |t|
    t.integer "LgP_Fac_ID",    :limit => 2,   :default => 0,    :null => false
    t.integer "LgP_Lec_ID",    :limit => 2,   :default => 0,    :null => false
    t.integer "LgP_ID",        :limit => 2,   :default => 0,    :null => false
    t.string  "LgP_Nombre",    :limit => 100
    t.boolean "LgP_Secuencia",                :default => true
  end

  create_table "libro", :id => false, :force => true do |t|
    t.integer "IDFacultad", :limit => 2, :default => 0,     :null => false
    t.string  "IDLibro",    :limit => 5, :default => "",    :null => false
    t.integer "IFolio",                  :default => 0,     :null => false
    t.integer "FFolio",                  :default => 0,     :null => false
    t.boolean "bloqueado",               :default => false, :null => false
    t.integer "Lib_Geo_ID", :limit => 2, :default => 1,     :null => false
    t.integer "clave",                                      :null => false
  end

  add_index "libro", ["IDFacultad"], :name => "IDFacultad"
  add_index "libro", ["IDLibro"], :name => "IDLibro"
  add_index "libro", ["Lib_Geo_ID"], :name => "GeoID"
  add_index "libro", ["clave"], :name => "clave"

  create_table "llamado", :id => false, :force => true do |t|
    t.integer "IDFacultad",         :limit => 2,  :default => 0,     :null => false
    t.integer "IDLectivo",          :limit => 2,  :default => 0,     :null => false
    t.integer "IDLlamado",          :limit => 2,  :default => 0,     :null => false
    t.string  "nombre",             :limit => 50
    t.date    "feini"
    t.date    "fefin"
    t.boolean "publicar",                         :default => false, :null => false
    t.string  "Lla_Letra_Sorteada", :limit => 1
    t.integer "Lla_Geo_ID",         :limit => 2,  :default => 0
    t.boolean "Lla_Castigo",                      :default => false, :null => false
    t.boolean "Lla_Promocional",                  :default => false
  end

  add_index "llamado", ["IDFacultad"], :name => "IDFacultad"
  add_index "llamado", ["IDLectivo"], :name => "IDLectivo"
  add_index "llamado", ["IDLlamado"], :name => "IDLlamado"
  add_index "llamado", ["Lla_Geo_ID"], :name => "Lla_Geo_ID"

  create_table "localidad", :id => false, :force => true do |t|
    t.integer "Loc_Fac_ID",  :limit => 2,  :default => 1,  :null => false
    t.integer "IDProvincia", :limit => 2,  :default => 0,  :null => false
    t.integer "IDLocalidad", :limit => 2,  :default => 0,  :null => false
    t.string  "nombre",      :limit => 30, :default => "", :null => false
  end

  add_index "localidad", ["nombre"], :name => "nombre"

  create_table "logs", :primary_key => "Log_ID", :force => true do |t|
    t.integer  "Log_Fac_ID",     :limit => 2,  :default => 0,     :null => false
    t.string   "Log_Usuario",    :limit => 15, :default => "",    :null => false
    t.integer  "Log_SMo_ID",     :limit => 2,  :default => 0,     :null => false
    t.datetime "Log_Inicio"
    t.datetime "Log_Fin"
    t.boolean  "Log_Automatico",               :default => false, :null => false
  end

  add_index "logs", ["Log_Fac_ID", "Log_Usuario", "Log_SMo_ID", "Log_Inicio"], :name => "Log_Fac_ID"
  add_index "logs", ["Log_Fac_ID"], :name => "Log_Fac_ID_2"
  add_index "logs", ["Log_SMo_ID"], :name => "Log_SMo_ID"
  add_index "logs", ["Log_Usuario"], :name => "Log_Usuario"

  create_table "ltema", :id => false, :force => true do |t|
    t.integer "LTe_Fac_ID",        :limit => 2,  :default => 0,  :null => false
    t.integer "LTe_Pla_ID",        :limit => 2,  :default => 0,  :null => false
    t.string  "LTe_Mat_ID",        :limit => 10, :default => "", :null => false
    t.integer "LTe_Lec_ID",        :limit => 2,  :default => 0,  :null => false
    t.integer "LTe_ID",            :limit => 2,  :default => 0,  :null => false
    t.date    "LTe_FechaCarga"
    t.date    "LTe_FechaClase"
    t.integer "LTe_Per_ID"
    t.integer "LTe_Doc_ID",        :limit => 2
    t.text    "LTe_Observaciones"
  end

  create_table "ltematemas", :id => false, :force => true do |t|
    t.integer "LTM_Fac_ID", :limit => 2,  :default => 0,  :null => false
    t.integer "LTM_Pla_ID", :limit => 2,  :default => 0,  :null => false
    t.string  "LTM_Mat_ID", :limit => 10, :default => "", :null => false
    t.integer "LTM_Lec_ID", :limit => 2,  :default => 0,  :null => false
    t.integer "LTM_LTe_ID", :limit => 2,  :default => 0,  :null => false
    t.integer "LTM_PrC_ID", :limit => 2,  :default => 0,  :null => false
    t.integer "LTM_PrT_ID", :limit => 2,  :default => 0,  :null => false
    t.string  "LTM_PrS_ID", :limit => 1,  :default => "", :null => false
  end

  create_table "mataluestado", :primary_key => "MAE_ID", :force => true do |t|
    t.string "MAE_Descripcion_Pos"
    t.string "MAE_Descripcion_Neg"
  end

  create_table "materia", :id => false, :force => true do |t|
    t.integer "IDFacultad",   :limit => 2,   :default => 0,     :null => false
    t.integer "IDPlan",       :limit => 2,   :default => 0,     :null => false
    t.string  "IDMateria",    :limit => 10,  :default => "",    :null => false
    t.integer "Mat_Ctd_ID",   :limit => 2,   :default => 0,     :null => false
    t.string  "Nombre",       :limit => 100, :default => "",    :null => false
    t.boolean "Mat_Opcional",                :default => false, :null => false
    t.integer "Mat_Virtual",  :limit => 2,   :default => 0,     :null => false
    t.integer "Mat_Dias",     :limit => 2,   :default => 0,     :null => false
    t.integer "Mat_Per_ID",   :limit => 2,   :default => 0,     :null => false
    t.boolean "Mat_Especial",                :default => false, :null => false
    t.boolean "Mat_Taller",                  :default => false, :null => false
    t.string  "Mat_ID_Real",  :limit => 10,  :default => "",    :null => false
    t.integer "Mat_Curso",    :limit => 2,   :default => 0,     :null => false
    t.integer "ID",                                             :null => false
  end

  add_index "materia", ["ID"], :name => "id"
  add_index "materia", ["IDFacultad", "IDPlan", "IDMateria"], :name => "Primaria", :unique => true
  add_index "materia", ["IDFacultad", "IDPlan", "Mat_Ctd_ID", "IDMateria"], :name => "catedra"
  add_index "materia", ["IDFacultad"], :name => "IDFacultad"
  add_index "materia", ["IDMateria"], :name => "IDMateria"
  add_index "materia", ["IDPlan"], :name => "IDPlan"
  add_index "materia", ["Mat_Per_ID"], :name => "Mat_Per_ID"
  add_index "materia", ["Nombre"], :name => "Nombre"

  create_table "matxcarrera", :id => false, :force => true do |t|
    t.integer "IDFacultad",   :limit => 2,  :default => 0,   :null => false
    t.integer "IDPlan",       :limit => 2,  :default => 0,   :null => false
    t.integer "IDCarrera",    :limit => 2,  :default => 0,   :null => false
    t.string  "IDMateria",    :limit => 10, :default => "",  :null => false
    t.integer "MxC_Horas",    :limit => 2,  :default => 0,   :null => false
    t.float   "MxC_Creditos",               :default => 0.0, :null => false
  end

  create_table "matxcurso", :id => false, :force => true do |t|
    t.integer "IDFacultad", :limit => 2,  :default => 0,  :null => false
    t.integer "IDPlan",     :limit => 2,  :default => 0,  :null => false
    t.integer "IDCarrera",  :limit => 2,  :default => 0,  :null => false
    t.string  "IDMateria",  :limit => 10, :default => "", :null => false
    t.integer "Curso",      :limit => 2,  :default => 0,  :null => false
    t.integer "Periodo",    :limit => 2,  :default => 0,  :null => false
  end

  add_index "matxcurso", ["Curso"], :name => "Curso"
  add_index "matxcurso", ["IDCarrera"], :name => "IDCarrera"
  add_index "matxcurso", ["IDFacultad"], :name => "IDFacultad"
  add_index "matxcurso", ["IDMateria"], :name => "IDMateria"
  add_index "matxcurso", ["IDPlan"], :name => "IDPlan"
  add_index "matxcurso", ["Periodo"], :name => "Periodo"

  create_table "mesaexa", :id => false, :force => true do |t|
    t.integer  "IDFacultad",      :limit => 2,  :default => 0,  :null => false
    t.integer  "IDPlan",          :limit => 2,  :default => 0,  :null => false
    t.string   "IDMateria",       :limit => 10, :default => "", :null => false
    t.integer  "IDLectivo",       :limit => 2,  :default => 0,  :null => false
    t.integer  "IDLlamado",       :limit => 2,  :default => 0,  :null => false
    t.date     "fecha",                                         :null => false
    t.time     "hora",                                          :null => false
    t.datetime "MEx_Vencimiento"
    t.datetime "MEx_Borrado"
    t.integer  "clave",                                         :null => false
  end

  add_index "mesaexa", ["IDFacultad", "IDPlan", "IDMateria"], :name => "otro"
  add_index "mesaexa", ["IDLectivo"], :name => "IDLectivo"
  add_index "mesaexa", ["IDLlamado"], :name => "IDLlamado"
  add_index "mesaexa", ["IDMateria"], :name => "IDMateria"
  add_index "mesaexa", ["IDPlan"], :name => "IDPlan"
  add_index "mesaexa", ["clave"], :name => "clave"

  create_table "nacimiento", :id => false, :force => true do |t|
    t.integer "IDDocumento",                  :default => 0, :null => false
    t.integer "IDTipoDoc",      :limit => 2,  :default => 0, :null => false
    t.date    "fecha",                                       :null => false
    t.string  "lugar",          :limit => 40
    t.integer "Nci_Fac_ID",     :limit => 2,  :default => 1, :null => false
    t.integer "IDProvincia",    :limit => 2,  :default => 0
    t.integer "IDLocalidad",    :limit => 2,  :default => 0
    t.integer "IDNacionalidad", :limit => 2,  :default => 0
  end

  add_index "nacimiento", ["IDLocalidad"], :name => "IDLocalidad"
  add_index "nacimiento", ["IDNacionalidad"], :name => "IDNacionalidad"
  add_index "nacimiento", ["IDProvincia"], :name => "IDProvincia"

  create_table "nacionalidad", :id => false, :force => true do |t|
    t.integer "Nac_Fac_ID",     :limit => 2,  :default => 1, :null => false
    t.integer "IDNacionalidad", :limit => 2,  :default => 0, :null => false
    t.string  "Nombre",         :limit => 50
    t.string  "Origen",         :limit => 50
  end

  create_table "nota", :id => false, :force => true do |t|
    t.integer "IDFacultad",      :limit => 2,   :default => 0,  :null => false
    t.string  "calif",           :limit => 10,  :default => "", :null => false
    t.integer "estado",          :limit => 2,   :default => 3,  :null => false
    t.integer "Not_ID",          :limit => 2,                   :null => false
    t.string  "Not_Descripcion", :limit => 250, :default => "", :null => false
  end

  add_index "nota", ["IDFacultad"], :name => "IDFacultad"
  add_index "nota", ["Not_ID"], :name => "Not_ID"
  add_index "nota", ["calif"], :name => "calif"
  add_index "nota", ["estado"], :name => "estado"

  create_table "noticia", :id => false, :force => true do |t|
    t.integer "IDFacultad", :limit => 2,   :default => 0,     :null => false
    t.integer "IDNoticia",  :limit => 2,   :default => 0,     :null => false
    t.string  "texto",      :limit => 250
    t.boolean "publicar",                  :default => false
    t.text    "html"
  end

  add_index "noticia", ["IDFacultad"], :name => "IDFacultad"
  add_index "noticia", ["IDNoticia"], :name => "IDNoticia"

  create_table "novedad", :primary_key => "Nov_ID", :force => true do |t|
    t.integer "Nov_Fac_ID",      :limit => 2,   :default => 0, :null => false
    t.integer "Nov_Per_ID",                     :default => 0, :null => false
    t.integer "Nov_Doc_ID",      :limit => 2,   :default => 0, :null => false
    t.integer "Nov_Tip_ID",      :limit => 2
    t.string  "Nov_Descripcion", :limit => 100
    t.integer "Nov_Importe"
  end

  create_table "numero", :primary_key => "IDNumero", :force => true do |t|
    t.string "nombre", :limit => 10
  end

  add_index "numero", ["IDNumero"], :name => "IDNumero"

  create_table "obserinsc", :id => false, :force => true do |t|
    t.integer "IDFacultad", :limit => 2,  :default => 0, :null => false
    t.integer "IDMotivo",   :limit => 2,  :default => 0, :null => false
    t.string  "nombre",     :limit => 50
  end

  add_index "obserinsc", ["IDFacultad"], :name => "IDFacultad"
  add_index "obserinsc", ["IDMotivo"], :name => "IDMotivo"

  create_table "ocupacion", :primary_key => "Ocu_ID", :force => true do |t|
    t.string "Ocu_Descripcion", :limit => 50, :default => "", :null => false
  end

  add_index "ocupacion", ["Ocu_ID"], :name => "Ocu_ID"

  create_table "otrasdedic", :id => false, :force => true do |t|
    t.integer "ODe_Per_ID",                    :default => 0,   :null => false
    t.integer "ODe_Doc_ID",     :limit => 2,   :default => 0,   :null => false
    t.integer "ODe_ID",         :limit => 2,   :default => 0,   :null => false
    t.integer "ODe_TTi_ID",     :limit => 2,   :default => 0,   :null => false
    t.integer "ODe_Ins_ID",                    :default => 0,   :null => false
    t.string  "ODe_Carrera",    :limit => 150
    t.string  "ODe_Asignatura", :limit => 150
    t.float   "ODe_HRSemanal",  :limit => 4,   :default => 0.0, :null => false
  end

  create_table "parentesco", :primary_key => "Par_ID", :force => true do |t|
    t.string "Par_Nombre", :limit => 30
  end

  create_table "pasconvenio", :id => false, :force => true do |t|
    t.integer "PCo_Fac_ID",     :limit => 2,  :default => 0,     :null => false
    t.integer "PCo_Per_ID",                   :default => 0,     :null => false
    t.integer "PCo_Doc_ID",     :limit => 2,  :default => 0,     :null => false
    t.date    "PCo_Inicio",                                      :null => false
    t.date    "PCo_Final",                                       :null => false
    t.date    "PCo_Firma",                                       :null => false
    t.integer "PCo_PSE_ID",     :limit => 2,  :default => 0,     :null => false
    t.string  "PCo_Contacto",   :limit => 50
    t.string  "PCo_Cargo",      :limit => 30
    t.string  "PCo_Mail",       :limit => 30
    t.string  "PCo_Telefono",   :limit => 20
    t.integer "PCo_Res_Per_ID",               :default => 0,     :null => false
    t.integer "PCo_Res_Doc_ID", :limit => 2,  :default => 0,     :null => false
    t.boolean "PCo_Asegurado",                :default => false, :null => false
  end

  add_index "pasconvenio", ["PCo_Asegurado"], :name => "PCo_Asegurado"
  add_index "pasconvenio", ["PCo_Fac_ID", "PCo_PSE_ID"], :name => "PCo_Fac_ID"
  add_index "pasconvenio", ["PCo_Res_Per_ID", "PCo_Res_Doc_ID"], :name => "PCo_Res_Per_ID"

  create_table "pasconvgral", :id => false, :force => true do |t|
    t.integer "PCG_Fac_ID", :limit => 2, :default => 0, :null => false
    t.integer "PCG_PSE_ID", :limit => 2, :default => 0, :null => false
    t.date    "PCG_Inicio",                             :null => false
    t.date    "PCG_Fin"
    t.date    "PCG_Firma",                              :null => false
    t.integer "PCG_Per_ID",              :default => 0, :null => false
    t.integer "PCG_Doc_ID", :limit => 2, :default => 0, :null => false
  end

  create_table "pase", :id => false, :force => true do |t|
    t.integer "Pas_IDFacultad",    :limit => 2,  :default => 0,  :null => false
    t.integer "Pas_IDDocumento",                 :default => 0,  :null => false
    t.integer "Pas_IDTipoDoc",     :limit => 2,  :default => 0,  :null => false
    t.integer "Pas_Direccion",     :limit => 2,  :default => 0,  :null => false
    t.integer "Pas_ID",            :limit => 2,  :default => 0,  :null => false
    t.integer "Pas_Uni_ID",        :limit => 2,  :default => 0,  :null => false
    t.integer "Pas_FUn_ID",        :limit => 2,  :default => 0,  :null => false
    t.date    "Pas_fecha",                                       :null => false
    t.string  "Pas_Observaciones",               :default => "", :null => false
    t.integer "Pas_Aplazos",       :limit => 2,  :default => 0,  :null => false
    t.string  "Pas_Resolucion",    :limit => 50, :default => "", :null => false
    t.integer "Pas_Pla_ID",        :limit => 2,  :default => 0,  :null => false
    t.integer "Pas_Car_ID",        :limit => 2,  :default => 0,  :null => false
    t.integer "Pas_Curso",         :limit => 2,  :default => 0,  :null => false
  end

  add_index "pase", ["Pas_FUn_ID"], :name => "Pas_Fac_ID"
  add_index "pase", ["Pas_IDDocumento"], :name => "Baj_IDDocumento"
  add_index "pase", ["Pas_IDFacultad"], :name => "Baj_IDFacultad"
  add_index "pase", ["Pas_IDTipoDoc"], :name => "Baj_IDTipoDoc"
  add_index "pase", ["Pas_Uni_ID"], :name => "Pas_Uni_ID"

  create_table "paseequivalencia", :primary_key => "clave", :force => true do |t|
    t.integer "PEq_Fac_ID",        :limit => 2,  :default => 0,  :null => false
    t.integer "PEq_Per_ID",                      :default => 0,  :null => false
    t.integer "PEq_Doc_ID",        :limit => 2,  :default => 0,  :null => false
    t.integer "PEq_Pas_ID",        :limit => 2,  :default => 0,  :null => false
    t.integer "PEq_Pla_ID",        :limit => 2,  :default => 0,  :null => false
    t.string  "PEq_Mat_ID",        :limit => 10, :default => "", :null => false
    t.integer "PEq_Orden",         :limit => 2,  :default => 1,  :null => false
    t.date    "PEq_Fecha",                                       :null => false
    t.string  "PEq_Calif",         :limit => 5,  :default => "", :null => false
    t.string  "PEq_Libro",         :limit => 5,  :default => "", :null => false
    t.integer "PEq_Folio",         :limit => 2,  :default => 0,  :null => false
    t.integer "PEq_PME_ID",                      :default => 0,  :null => false
    t.date    "PEq_FechaOriginal",                               :null => false
    t.string  "PEq_CalifOriginal", :limit => 50, :default => "", :null => false
    t.string  "PEq_LibroOriginal", :limit => 10, :default => "", :null => false
    t.integer "PEq_FolioOriginal",               :default => 0,  :null => false
  end

  add_index "paseequivalencia", ["PEq_Fac_ID", "PEq_Per_ID", "PEq_Doc_ID", "PEq_Pas_ID", "PEq_Pla_ID", "PEq_Mat_ID", "PEq_Orden"], :name => "PEq_Fac_ID", :unique => true

  create_table "pasemateriaexterna", :primary_key => "PME_ID", :force => true do |t|
    t.string "PME_Nombre", :limit => 250, :default => "", :null => false
  end

  add_index "pasemateriaexterna", ["PME_Nombre"], :name => "PME_Nombre", :unique => true

  create_table "pasempresa", :id => false, :force => true do |t|
    t.integer "PSE_Fac_ID",        :limit => 2,   :default => 0,  :null => false
    t.integer "PSE_ID",            :limit => 2,   :default => 0,  :null => false
    t.string  "PSE_Nombre",        :limit => 100, :default => "", :null => false
    t.integer "PSE_PSR_ID",        :limit => 2,   :default => 0,  :null => false
    t.string  "PSE_Calle",         :limit => 30
    t.string  "PSE_Puerta",        :limit => 10
    t.string  "PSE_Piso",          :limit => 10
    t.string  "PSE_Dpto",          :limit => 5
    t.string  "PSE_Observaciones", :limit => 30
    t.string  "PSE_Telefono",      :limit => 25
    t.string  "PSE_CodPostal",     :limit => 10
    t.integer "PSE_Pro_ID",        :limit => 2,   :default => 0,  :null => false
    t.integer "PSE_Loc_ID",        :limit => 2,   :default => 0,  :null => false
    t.string  "PSE_Contacto",      :limit => 50
    t.string  "PSE_CCargo",        :limit => 30
    t.string  "PSE_CMail",         :limit => 30
  end

  add_index "pasempresa", ["PSE_PSR_ID"], :name => "pse_psr_id"

  create_table "pasrubro", :id => false, :force => true do |t|
    t.integer "PSR_Fac_ID", :limit => 2,   :default => 0,  :null => false
    t.integer "PSR_ID",     :limit => 2,   :default => 0,  :null => false
    t.string  "PSR_Nombre", :limit => 100, :default => "", :null => false
  end

  create_table "persona", :id => false, :force => true do |t|
    t.integer "IDDocumento",               :default => 0,  :null => false
    t.integer "IDTipoDoc",   :limit => 2,  :default => 0,  :null => false
    t.string  "Apellido",    :limit => 30, :default => "", :null => false
    t.string  "Nombre",      :limit => 30
    t.string  "Sexo",        :limit => 1
    t.integer "Per_Pro_ID",  :limit => 2,  :default => 0
    t.string  "Per_Mascara", :limit => 30
  end

  add_index "persona", ["Apellido"], :name => "Apellido"
  add_index "persona", ["Per_Pro_ID"], :name => "Per_Pro_ID"

  create_table "plan", :id => false, :force => true do |t|
    t.integer "IDFacultad",   :limit => 2,  :default => 0,  :null => false
    t.integer "IDPlan",       :limit => 2,  :default => 0,  :null => false
    t.string  "nombre",       :limit => 30, :default => "", :null => false
    t.date    "fecha"
    t.integer "Pla_Publicar", :limit => 2,  :default => 0,  :null => false
    t.integer "Pla_Semanas",  :limit => 2,  :default => 0,  :null => false
  end

  create_table "popup", :id => false, :force => true do |t|
    t.integer "Pop_Per_ID",               :default => 0, :null => false
    t.integer "Pop_Doc_ID",  :limit => 2, :default => 0, :null => false
    t.text    "Pop_Mensaje",                             :null => false
  end

  create_table "porcxanho", :primary_key => "PxA_Anho", :force => true do |t|
    t.integer "PxA_Porcentaje", :limit => 2, :default => 0, :null => false
  end

  create_table "portalajax", :id => false, :force => true do |t|
    t.integer "IDDocumento",                :default => 0,  :null => false
    t.integer "IDTipoDoc",   :limit => 2,   :default => 0,  :null => false
    t.integer "IDFacultad",  :limit => 2,   :default => 0,  :null => false
    t.string  "widget",      :limit => 30,  :default => "", :null => false
    t.string  "icon",        :limit => 50,  :default => "", :null => false
    t.string  "title",       :limit => 50,  :default => "", :null => false
    t.string  "url",         :limit => 250, :default => "", :null => false
    t.binary  "options"
    t.binary  "data"
    t.integer "col",         :limit => 2,   :default => 0,  :null => false
    t.integer "pos",                        :default => 0,  :null => false
    t.integer "expand",      :limit => 2,   :default => 1,  :null => false
  end

  create_table "posalumno", :id => false, :force => true do |t|
    t.integer "PAl_Fac_ID", :limit => 2, :default => 0, :null => false
    t.integer "PAl_Per_ID",              :default => 0, :null => false
    t.integer "PAl_Doc_ID", :limit => 2, :default => 0, :null => false
    t.integer "PAl_Leg_ID",              :default => 0, :null => false
    t.date    "PAl_Fecha"
  end

  create_table "posasistencia", :id => false, :force => true do |t|
    t.integer "PAs_Fac_ID",   :limit => 2, :default => 0,     :null => false
    t.integer "PAs_PCa_ID",   :limit => 2, :default => 0,     :null => false
    t.integer "PAs_PMa_ID",   :limit => 2, :default => 0,     :null => false
    t.integer "PAs_Per_ID",                :default => 0,     :null => false
    t.integer "PAs_Doc_ID",   :limit => 2, :default => 0,     :null => false
    t.date    "PAs_Fecha",                                    :null => false
    t.boolean "PAs_Presente",              :default => false, :null => false
  end

  create_table "posbaja", :id => false, :force => true do |t|
    t.integer "PBa_Fac_ID", :limit => 2,   :default => 0, :null => false
    t.integer "PBa_Per_ID",                :default => 0, :null => false
    t.integer "PBa_Doc_ID", :limit => 2,   :default => 0, :null => false
    t.integer "PBa_PCa_ID", :limit => 2,   :default => 0, :null => false
    t.date    "PBa_Fecha"
    t.string  "PBa_Motivo", :limit => 200
  end

  create_table "poscalif", :id => false, :force => true do |t|
    t.integer "PCl_Fac_ID", :limit => 2,  :default => 0, :null => false
    t.integer "PCl_Per_ID",               :default => 0, :null => false
    t.integer "PCl_Doc_ID", :limit => 2,  :default => 0, :null => false
    t.integer "PCl_PCa_ID", :limit => 2,  :default => 0, :null => false
    t.integer "PCl_PMa_ID", :limit => 2,  :default => 0, :null => false
    t.date    "PCl_Fecha",                               :null => false
    t.string  "PCl_Calif",  :limit => 20
    t.string  "PCl_Libro",  :limit => 5
    t.integer "PCl_Folio",  :limit => 2,  :default => 0
  end

  create_table "poscarrera", :id => false, :force => true do |t|
    t.integer "PCa_Fac_ID",    :limit => 2,   :default => 0,     :null => false
    t.integer "PCa_ID",        :limit => 2,   :default => 0,     :null => false
    t.string  "PCa_Nombre",    :limit => 60,  :default => "",    :null => false
    t.string  "PCa_Iniciales", :limit => 5
    t.string  "PCa_Titulo",    :limit => 60
    t.boolean "PCa_Tesis",                    :default => false, :null => false
    t.string  "PCa_Coneau",    :limit => 100
  end

  create_table "posedicion", :id => false, :force => true do |t|
    t.integer "PoE_Fac_ID", :limit => 2,  :null => false
    t.integer "PoE_PCa_ID", :limit => 2,  :null => false
    t.integer "PoE_ID",     :limit => 2,  :null => false
    t.string  "PoE_Nombre", :limit => 50, :null => false
    t.integer "PoE_Lec_ID", :limit => 2,  :null => false
  end

  create_table "posiexa", :id => false, :force => true do |t|
    t.integer  "PIE_Fac_ID", :limit => 2, :default => 0, :null => false
    t.integer  "PIE_Per_ID",              :default => 0, :null => false
    t.integer  "PIE_Doc_ID", :limit => 2, :default => 0, :null => false
    t.integer  "PIE_Lec_ID", :limit => 2, :default => 0, :null => false
    t.integer  "PIE_PLl_ID", :limit => 2, :default => 0, :null => false
    t.integer  "PIE_PCa_ID", :limit => 2, :default => 0, :null => false
    t.integer  "PIE_PMa_ID", :limit => 2, :default => 0, :null => false
    t.date     "PIE_Fecha"
    t.datetime "PIE_Hora"
  end

  create_table "posinscripcion", :id => false, :force => true do |t|
    t.integer "PIn_Fac_ID",   :limit => 2, :default => 0, :null => false
    t.integer "PIn_Per_ID",                :default => 0, :null => false
    t.integer "PIn_Doc_ID",   :limit => 2, :default => 0, :null => false
    t.integer "PIn_PCa_ID",   :limit => 2, :default => 0, :null => false
    t.integer "PIn_PoE_ID",   :limit => 2,                :null => false
    t.date    "PIn_Fecha"
    t.integer "PIn_Chequera",              :default => 0, :null => false
    t.integer "PIn_Geo_ID",   :limit => 2, :default => 0, :null => false
  end

  create_table "posinscripciondet", :id => false, :force => true do |t|
    t.integer "PID_Fac_ID", :limit => 2, :null => false
    t.integer "PID_PCa_ID", :limit => 2, :null => false
    t.integer "PID_PoE_ID", :limit => 2, :null => false
    t.integer "PID_Per_ID",              :null => false
    t.integer "PID_Doc_ID", :limit => 2, :null => false
    t.integer "PID_PMa_ID", :limit => 2, :null => false
  end

  create_table "posllamado", :id => false, :force => true do |t|
    t.integer "PLl_Fac_ID", :limit => 2,  :default => 0, :null => false
    t.integer "PLl_Lec_ID", :limit => 2,  :default => 0, :null => false
    t.integer "PLl_ID",     :limit => 2,  :default => 0, :null => false
    t.string  "PLl_Nombre", :limit => 50
    t.integer "PLl_Geo_ID", :limit => 2,  :default => 0, :null => false
  end

  add_index "posllamado", ["PLl_Geo_ID"], :name => "PLl_Geo_ID"

  create_table "posmateria", :id => false, :force => true do |t|
    t.integer "PMa_Fac_ID",   :limit => 2,   :default => 0, :null => false
    t.integer "PMa_PCa_ID",   :limit => 2,   :default => 0, :null => false
    t.integer "PMa_ID",       :limit => 2,   :default => 0, :null => false
    t.string  "PMa_Nombre",   :limit => 100,                :null => false
    t.float   "PMa_Creditos",                               :null => false
  end

  create_table "posmesa", :id => false, :force => true do |t|
    t.integer "PMe_Fac_ID", :limit => 2, :default => 0, :null => false
    t.integer "PMe_PCa_ID", :limit => 2, :default => 0, :null => false
    t.integer "PMe_PMa_ID", :limit => 2, :default => 0, :null => false
    t.integer "PMe_Lec_ID", :limit => 2, :default => 0, :null => false
    t.integer "PMe_PLl_ID", :limit => 2, :default => 0, :null => false
    t.date    "PMe_Fecha"
  end

  create_table "posnota", :id => false, :force => true do |t|
    t.integer "PNo_Fac_ID",      :limit => 2,   :default => 0,  :null => false
    t.string  "PNo_Calif",       :limit => 20,  :default => "", :null => false
    t.integer "PNo_EMa_ID",      :limit => 2,   :default => 3
    t.integer "PNo_ID",          :limit => 2,   :default => 0
    t.string  "PNo_Descripcion", :limit => 100
  end

  create_table "posprfexa", :id => false, :force => true do |t|
    t.integer "PPE_Fac_ID", :limit => 2, :default => 0, :null => false
    t.integer "PPE_PCa_ID", :limit => 2, :default => 0, :null => false
    t.integer "PPE_PMa_ID", :limit => 2, :default => 0, :null => false
    t.integer "PPE_Lec_ID", :limit => 2, :default => 0, :null => false
    t.integer "PPE_PLl_ID", :limit => 2, :default => 0, :null => false
    t.integer "PPE_Gru_ID", :limit => 2, :default => 0, :null => false
    t.integer "PPE_Car_ID", :limit => 2, :default => 0, :null => false
    t.integer "PPE_Sec_ID", :limit => 2, :default => 0, :null => false
    t.integer "PPE_Per_ID",              :default => 0
    t.integer "PPE_Doc_ID", :limit => 2, :default => 0
  end

  add_index "posprfexa", ["PPE_Car_ID"], :name => "PPE_Car_ID"
  add_index "posprfexa", ["PPE_Doc_ID"], :name => "PPE_Doc_ID"
  add_index "posprfexa", ["PPE_Fac_ID"], :name => "IDFacultad"
  add_index "posprfexa", ["PPE_Gru_ID"], :name => "PPE_Gru_ID"
  add_index "posprfexa", ["PPE_Lec_ID"], :name => "IDLectivo"
  add_index "posprfexa", ["PPE_PCa_ID"], :name => "IDPlan"
  add_index "posprfexa", ["PPE_PLl_ID"], :name => "IDLlamado"
  add_index "posprfexa", ["PPE_PMa_ID"], :name => "IDMateria"
  add_index "posprfexa", ["PPE_Per_ID"], :name => "PPE_Per_ID"
  add_index "posprfexa", ["PPE_Sec_ID"], :name => "PPE_Sec_ID"

  create_table "postitulo", :id => false, :force => true do |t|
    t.integer "PTi_Fac_ID", :limit => 2,  :default => 0, :null => false
    t.integer "PTi_PCa_ID", :limit => 2,  :default => 0, :null => false
    t.integer "PTi_Per_ID",               :default => 0, :null => false
    t.integer "PTi_Doc_ID", :limit => 2,  :default => 0, :null => false
    t.date    "PTi_Fecha"
    t.string  "PTi_Calif",  :limit => 20
    t.string  "PTi_Titulo"
    t.integer "PTi_Geo_ID", :limit => 2
    t.string  "PTi_Libro",  :limit => 10
    t.integer "PTi_Folio",  :limit => 2,  :default => 0, :null => false
  end

  add_index "postitulo", ["PTi_Per_ID", "PTi_Doc_ID"], :name => "PTi_Per_ID"

  create_table "practico", :id => false, :force => true do |t|
    t.integer "Pra_Fac_ID",        :limit => 2,  :default => 0,  :null => false
    t.integer "Pra_Per_ID",                      :default => 0,  :null => false
    t.integer "Pra_Doc_ID",        :limit => 2,  :default => 0,  :null => false
    t.integer "Pra_Pla_ID",        :limit => 2,  :default => 0,  :null => false
    t.string  "Pra_Mat_ID",        :limit => 5,  :default => "", :null => false
    t.integer "Pra_Lec_ID",        :limit => 2,  :default => 0,  :null => false
    t.string  "Pra_Nota1",         :limit => 5
    t.string  "Pra_Nota2",         :limit => 5
    t.string  "Pra_Nota3",         :limit => 5
    t.string  "Pra_Nota4",         :limit => 5
    t.string  "Pra_Recuperatorio", :limit => 5
    t.string  "Pra_Promedio",      :limit => 10
    t.string  "Pra_Rinde",         :limit => 30
  end

  create_table "pre_asistencia", :id => false, :force => true do |t|
    t.integer "PAs_Fac_ID",   :limit => 2, :default => 0,     :null => false
    t.integer "PAs_Per_ID",                :default => 0,     :null => false
    t.integer "PAs_Doc_ID",   :limit => 2, :default => 0,     :null => false
    t.integer "PAs_Lec_ID",   :limit => 2, :default => 0,     :null => false
    t.integer "PAs_PMa_ID",   :limit => 2, :default => 0,     :null => false
    t.date    "PAs_Fecha",                                    :null => false
    t.boolean "PAs_Presente",              :default => false, :null => false
  end

  add_index "pre_asistencia", ["PAs_Fecha"], :name => "PAs_Fecha"

  create_table "pre_d_inscripcion", :id => false, :force => true do |t|
    t.integer  "PDI_Fac_ID",              :limit => 2,  :default => 0,     :null => false
    t.integer  "PDI_Per_ID",                            :default => 0,     :null => false
    t.integer  "PDI_Doc_ID",              :limit => 2,  :default => 0,     :null => false
    t.integer  "PDI_Lec_ID",              :limit => 2,  :default => 0,     :null => false
    t.integer  "PDI_PMa_ID",              :limit => 2,  :default => 0,     :null => false
    t.datetime "PDI_Fecha_Aprobada"
    t.boolean  "PDI_Aprobada",                          :default => false
    t.string   "PDI_Nota",                :limit => 10,                    :null => false
    t.datetime "PDI_Fecha_Recuperatorio"
    t.string   "PDI_Nota_Recuperatorio",  :limit => 10,                    :null => false
  end

  add_index "pre_d_inscripcion", ["PDI_Aprobada"], :name => "PDI_Not_ID"
  add_index "pre_d_inscripcion", ["PDI_Doc_ID"], :name => "PIn_Doc_ID"
  add_index "pre_d_inscripcion", ["PDI_Fac_ID"], :name => "PDI_Fac_ID"
  add_index "pre_d_inscripcion", ["PDI_Lec_ID"], :name => "PDI_Lec_ID"
  add_index "pre_d_inscripcion", ["PDI_PMa_ID"], :name => "PDI_PMa_ID"
  add_index "pre_d_inscripcion", ["PDI_Per_ID"], :name => "PIn_Per_ID"

  create_table "pre_inscripcion", :id => false, :force => true do |t|
    t.integer  "PIn_Fac_ID",   :limit => 2,  :default => 0, :null => false
    t.integer  "PIn_Per_ID",                 :default => 0, :null => false
    t.integer  "PIn_Doc_ID",   :limit => 2,  :default => 0, :null => false
    t.integer  "PIn_Lec_ID",   :limit => 2,  :default => 0
    t.integer  "PIn_PTu_ID",   :limit => 2,  :default => 0
    t.datetime "PIn_Fecha"
    t.string   "PIn_Chequera", :limit => 15
    t.integer  "PIn_Geo_ID",   :limit => 2,  :default => 0
    t.string   "PIn_Barras",   :limit => 50
  end

  add_index "pre_inscripcion", ["PIn_Doc_ID"], :name => "PIn_Doc_ID"
  add_index "pre_inscripcion", ["PIn_Fac_ID"], :name => "PIn_Fac_ID"
  add_index "pre_inscripcion", ["PIn_Geo_ID"], :name => "PIn_Geo_ID"
  add_index "pre_inscripcion", ["PIn_Lec_ID"], :name => "PIn_Lec_ID"
  add_index "pre_inscripcion", ["PIn_PTu_ID"], :name => "PIn_PTu_ID"
  add_index "pre_inscripcion", ["PIn_Per_ID"], :name => "PIn_Per_ID"

  create_table "pre_materia", :id => false, :force => true do |t|
    t.integer "PMa_Fac_ID", :limit => 2,                                 :default => 0,   :null => false
    t.integer "PMa_Lec_ID", :limit => 2,                                 :default => 0,   :null => false
    t.integer "PMa_ID",     :limit => 2,                                 :default => 0,   :null => false
    t.string  "PMa_Nombre", :limit => 30
    t.decimal "PMa_Nota",                 :precision => 20, :scale => 4, :default => 0.0
  end

  add_index "pre_materia", ["PMa_Fac_ID"], :name => "PMa_Fac_ID"
  add_index "pre_materia", ["PMa_ID"], :name => "PMa_ID"
  add_index "pre_materia", ["PMa_Lec_ID"], :name => "PMa_Lec_ID"

  create_table "pre_turno", :id => false, :force => true do |t|
    t.integer "PTu_Fac_ID", :limit => 2,  :default => 0, :null => false
    t.integer "PTu_Lec_ID", :limit => 2,  :default => 0, :null => false
    t.integer "PTu_ID",     :limit => 2,  :default => 0, :null => false
    t.string  "PTu_Nombre", :limit => 30,                :null => false
    t.date    "PTu_Inicio",                              :null => false
    t.date    "PTu_Fin",                                 :null => false
  end

  add_index "pre_turno", ["PTu_Fac_ID"], :name => "PTu_Fac_ID"
  add_index "pre_turno", ["PTu_ID"], :name => "TPr_ID"
  add_index "pre_turno", ["PTu_Lec_ID"], :name => "TPr_Lec_ID"

  create_table "produccion", :id => false, :force => true do |t|
    t.integer "Pro_Per_ID",                   :default => 0, :null => false
    t.integer "Pro_Doc_ID",    :limit => 2,   :default => 0, :null => false
    t.integer "Pro_ID",        :limit => 2,   :default => 0, :null => false
    t.integer "Pro_TPr_ID",    :limit => 2,   :default => 0, :null => false
    t.string  "Pro_Titulo",    :limit => 150
    t.integer "Pro_Anho",      :limit => 2
    t.string  "Pro_Autores",   :limit => 200
    t.string  "Pro_Lugar",     :limit => 100
    t.string  "Pro_Editorial", :limit => 100
    t.integer "Pro_Paginas",   :limit => 2,   :default => 0, :null => false
  end

  create_table "profdesignacion", :id => false, :force => true do |t|
    t.integer "PrD_Fac_ID",       :limit => 2, :default => 0, :null => false
    t.integer "PrD_Lec_ID",       :limit => 2, :default => 0, :null => false
    t.integer "PrD_Geo_ID",       :limit => 2, :default => 0, :null => false
    t.integer "PrD_Per_ID",                    :default => 0, :null => false
    t.integer "PrD_Doc_ID",       :limit => 2, :default => 0, :null => false
    t.integer "PrD_ID",           :limit => 2, :default => 0, :null => false
    t.integer "PrD_Des_ID",       :limit => 2, :default => 0, :null => false
    t.integer "PrD_CantMaterias", :limit => 2, :default => 0, :null => false
  end

  create_table "profdesmat", :id => false, :force => true do |t|
    t.integer "PDM_Fac_ID",  :limit => 2,  :default => 0,  :null => false
    t.integer "PDM_Lec_ID",  :limit => 2,  :default => 0,  :null => false
    t.integer "PDM_Geo_ID",  :limit => 2,  :default => 0,  :null => false
    t.integer "PDM_Per_ID",                :default => 0,  :null => false
    t.integer "PDM_Doc_ID",  :limit => 2,  :default => 0,  :null => false
    t.integer "PDM_PrD_ID",  :limit => 2,  :default => 0,  :null => false
    t.integer "PDM_ID",      :limit => 2,  :default => 0,  :null => false
    t.integer "PDM_Cur_ID",  :limit => 2,  :default => 0,  :null => false
    t.integer "PDM_Periodo", :limit => 2,  :default => 0,  :null => false
    t.integer "PDM_Div_ID",  :limit => 2,  :default => 0,  :null => false
    t.integer "PDM_Pla_ID",  :limit => 2,  :default => 0,  :null => false
    t.string  "PDM_Mat_ID",  :limit => 10, :default => "", :null => false
    t.integer "PDM_CaM_ID",  :limit => 2,  :default => 0,  :null => false
  end

  create_table "profesion", :primary_key => "Pro_ID", :force => true do |t|
    t.string "Pro_Carrera",   :limit => 50
    t.string "Pro_Titulo",    :limit => 50
    t.string "Pro_Iniciales", :limit => 15
  end

  create_table "profesor", :id => false, :force => true do |t|
    t.integer "IDDocumento",                 :default => 0, :null => false
    t.integer "IDTipoDoc",      :limit => 2, :default => 0, :null => false
    t.integer "IDFacultad",     :limit => 2, :default => 0, :null => false
    t.integer "Legajo",                      :default => 0
    t.date    "Pro_Alta"
    t.date    "Pro_Baja"
    t.integer "Pro_Leg_TS",                  :default => 0, :null => false
    t.date    "Pro_Antiguedad"
    t.integer "Pro_Sit_ID",     :limit => 2, :default => 0, :null => false
  end

  add_index "profesor", ["IDDocumento"], :name => "IDDocumento"
  add_index "profesor", ["IDFacultad"], :name => "IDFacultad"
  add_index "profesor", ["IDTipoDoc"], :name => "IDTipoDoc"

  create_table "profexamen", :id => false, :force => true do |t|
    t.integer "PEx_Fac_ID", :limit => 2,  :default => 0,  :null => false
    t.integer "PEx_Pla_ID", :limit => 2,  :default => 0,  :null => false
    t.string  "PEx_Mat_ID", :limit => 10, :default => "", :null => false
    t.integer "PEx_Lec_ID", :limit => 2,  :default => 0,  :null => false
    t.integer "PEx_Lla_ID", :limit => 2,  :default => 0,  :null => false
    t.integer "PEx_Gru_ID", :limit => 2,  :default => 0,  :null => false
    t.integer "PEx_Car_ID", :limit => 2,  :default => 0,  :null => false
    t.integer "PEx_Sec_ID", :limit => 2,  :default => 0,  :null => false
    t.integer "PEx_Per_ID",               :default => 0
    t.integer "PEx_Doc_ID", :limit => 2,  :default => 0
  end

  add_index "profexamen", ["PEx_Car_ID"], :name => "PEx_Car_ID"
  add_index "profexamen", ["PEx_Doc_ID"], :name => "PEx_Doc_ID"
  add_index "profexamen", ["PEx_Fac_ID"], :name => "IDFacultad"
  add_index "profexamen", ["PEx_Gru_ID"], :name => "PEx_Gru_ID"
  add_index "profexamen", ["PEx_Lec_ID"], :name => "IDLectivo"
  add_index "profexamen", ["PEx_Lla_ID"], :name => "IDLlamado"
  add_index "profexamen", ["PEx_Mat_ID"], :name => "IDMateria"
  add_index "profexamen", ["PEx_Per_ID"], :name => "PEx_Per_ID"
  add_index "profexamen", ["PEx_Pla_ID"], :name => "IDPlan"
  add_index "profexamen", ["PEx_Sec_ID"], :name => "PEx_Sec_ID"

  create_table "profmateria", :id => false, :force => true do |t|
    t.integer "PrM_Fac_ID",         :limit => 2,  :default => 0,   :null => false
    t.integer "PrM_Pla_ID",         :limit => 2,  :default => 0,   :null => false
    t.string  "PrM_Mat_ID",         :limit => 10, :default => "",  :null => false
    t.integer "PrM_Lec_ID",         :limit => 2,  :default => 0,   :null => false
    t.integer "PrM_Per_ID",                       :default => 0,   :null => false
    t.integer "PrM_Doc_ID",         :limit => 2,  :default => 0,   :null => false
    t.integer "PrM_Geo_ID",         :limit => 2,  :default => 0,   :null => false
    t.integer "PrM_CaM_ID",         :limit => 2,  :default => 0,   :null => false
    t.integer "PrM_Des_ID",         :limit => 2,  :default => 0,   :null => false
    t.float   "PrM_HRDocenciaS",                  :default => 0.0, :null => false
    t.float   "PrM_HRSupervisionS",               :default => 0.0, :null => false
  end

  create_table "programa", :id => false, :force => true do |t|
    t.integer "Pro_Fac_ID", :limit => 2,  :default => 0,  :null => false
    t.integer "Pro_Pla_ID", :limit => 2,  :default => 0,  :null => false
    t.string  "Pro_Mat_ID", :limit => 10, :default => "", :null => false
    t.date    "Pro_Fecha"
  end

  create_table "programacapitulo", :id => false, :force => true do |t|
    t.integer "PrC_Fac_ID",   :limit => 2,   :default => 0,  :null => false
    t.integer "PrC_Pla_ID",   :limit => 2,   :default => 0,  :null => false
    t.string  "PrC_Mat_ID",   :limit => 10,  :default => "", :null => false
    t.integer "PrC_ID",       :limit => 2,   :default => 0,  :null => false
    t.string  "PrC_Titulo",   :limit => 150
    t.string  "PrC_Objetivo", :limit => 250
  end

  create_table "programasubtema", :id => false, :force => true do |t|
    t.integer "PrS_Fac_ID",      :limit => 2,   :default => 0,  :null => false
    t.integer "PrS_Pla_ID",      :limit => 2,   :default => 0,  :null => false
    t.string  "PrS_Mat_ID",      :limit => 10,  :default => "", :null => false
    t.integer "PrS_PrC_ID",      :limit => 2,   :default => 0,  :null => false
    t.integer "PrS_PrT_ID",      :limit => 2,   :default => 0,  :null => false
    t.string  "PrS_ID",          :limit => 1,   :default => "", :null => false
    t.string  "PrS_Descripcion", :limit => 150
  end

  create_table "programatema", :id => false, :force => true do |t|
    t.integer "PrT_Fac_ID",      :limit => 2,   :default => 0,  :null => false
    t.integer "PrT_Pla_ID",      :limit => 2,   :default => 0,  :null => false
    t.string  "PrT_Mat_ID",      :limit => 10,  :default => "", :null => false
    t.integer "PrT_PrC_ID",      :limit => 2,   :default => 0,  :null => false
    t.integer "PrT_ID",          :limit => 2,   :default => 0,  :null => false
    t.string  "PrT_Descripcion", :limit => 150
  end

  create_table "proinvestigacion", :id => false, :force => true do |t|
    t.integer "PIn_Per_ID",                        :default => 0, :null => false
    t.integer "PIn_Doc_ID",         :limit => 2,   :default => 0, :null => false
    t.integer "PIn_ID",             :limit => 2,   :default => 0, :null => false
    t.integer "PIn_Anho",           :limit => 2,   :default => 0, :null => false
    t.string  "PIn_TituloProyecto", :limit => 150
    t.string  "PIn_Institucion",    :limit => 150
    t.string  "PIn_Financiadora",   :limit => 150
    t.string  "PIn_Evaluadora",     :limit => 150
    t.string  "PIn_Duracion",       :limit => 50
    t.string  "PIn_Caracter",       :limit => 0
    t.text    "PIn_Resultados"
  end

  create_table "provincia", :id => false, :force => true do |t|
    t.integer "Pro_Fac_ID",  :limit => 2,  :default => 1,  :null => false
    t.integer "IDProvincia", :limit => 2,  :default => 0,  :null => false
    t.string  "nombre",      :limit => 25, :default => "", :null => false
  end

  add_index "provincia", ["nombre"], :name => "nombre"

  create_table "refresco", :id => false, :force => true do |t|
    t.integer "IDFacultad", :limit => 2, :default => 0, :null => false
    t.integer "IDTerminal",              :default => 0, :null => false
    t.integer "Form",       :limit => 2, :default => 0, :null => false
    t.integer "Tabla",      :limit => 2, :default => 0, :null => false
  end

  add_index "refresco", ["Form"], :name => "Form"
  add_index "refresco", ["IDFacultad"], :name => "IDFacultad"
  add_index "refresco", ["IDTerminal"], :name => "IDTerminal"
  add_index "refresco", ["Tabla"], :name => "Tabla"

  create_table "regauditoria", :primary_key => "RAu_Tabla", :force => true do |t|
  end

  create_table "regimpreso", :id => false, :force => true do |t|
    t.integer   "RIm_Fac_ID", :limit => 2,  :default => 0,  :null => false
    t.integer   "RIm_Pla_ID", :limit => 2,  :default => 0,  :null => false
    t.string    "RIm_Mat_ID", :limit => 10, :default => "", :null => false
    t.integer   "RIm_Lec_ID", :limit => 2,  :default => 0,  :null => false
    t.integer   "RIm_Per_ID",               :default => 0,  :null => false
    t.integer   "RIm_Doc_ID", :limit => 2,  :default => 0,  :null => false
    t.timestamp "RIm_Cuando",                               :null => false
    t.string    "RIm_Usu_ID", :limit => 15
  end

  add_index "regimpreso", ["RIm_Cuando"], :name => "rim_cuando"
  add_index "regimpreso", ["RIm_Usu_ID"], :name => "rim_usu_id"

  create_table "regular_adicional", :id => false, :force => true do |t|
    t.integer "ReA_Fac_ID",      :limit => 2,  :default => 0,  :null => false
    t.integer "ReA_Pla_ID",      :limit => 2,  :default => 0,  :null => false
    t.integer "ReA_Car_ID",      :limit => 2,  :default => 0,  :null => false
    t.integer "ReA_Pla_ID_Otro", :limit => 2,  :default => 0,  :null => false
    t.string  "ReA_Mat_ID_Otro", :limit => 10, :default => "", :null => false
  end

  add_index "regular_adicional", ["ReA_Car_ID"], :name => "ReA_Car_ID"
  add_index "regular_adicional", ["ReA_Fac_ID"], :name => "ReA_Fac_ID"
  add_index "regular_adicional", ["ReA_Mat_ID_Otro"], :name => "ReA_Mat_ID_Otro"
  add_index "regular_adicional", ["ReA_Pla_ID"], :name => "ReA_Pla_ID"
  add_index "regular_adicional", ["ReA_Pla_ID_Otro"], :name => "ReA_Pla_ID_Otro"

  create_table "regular_curso", :id => false, :force => true do |t|
    t.integer "ReC_Fac_ID",          :limit => 2,                                :default => 0,   :null => false
    t.integer "ReC_Pla_ID",          :limit => 2,                                :default => 0,   :null => false
    t.integer "ReC_Car_ID",          :limit => 2,                                :default => 0,   :null => false
    t.integer "ReC_Cur_ID",          :limit => 2,                                :default => 0,   :null => false
    t.integer "ReC_Anterior_Cur_ID", :limit => 2,                                :default => 0,   :null => false
    t.decimal "ReC_Porcentaje",                   :precision => 20, :scale => 4, :default => 0.0
    t.integer "ReC_Cantidad",        :limit => 2,                                :default => 0
  end

  add_index "regular_curso", ["ReC_Anterior_Cur_ID"], :name => "ReC_Anterior_Cur_ID"
  add_index "regular_curso", ["ReC_Car_ID"], :name => "Car_ID"
  add_index "regular_curso", ["ReC_Cur_ID"], :name => "ReC_Cur_ID"
  add_index "regular_curso", ["ReC_Fac_ID"], :name => "Fac_ID"
  add_index "regular_curso", ["ReC_Pla_ID"], :name => "Pla_ID"

  create_table "regular_obligatoria", :id => false, :force => true do |t|
    t.integer "ReO_Fac_ID", :limit => 2,  :default => 0,  :null => false
    t.integer "ReO_Pla_ID", :limit => 2,  :default => 0,  :null => false
    t.integer "ReO_Car_ID", :limit => 2,  :default => 0,  :null => false
    t.integer "ReO_Cur_ID", :limit => 2,  :default => 0,  :null => false
    t.string  "ReO_Mat_ID", :limit => 10, :default => "", :null => false
  end

  add_index "regular_obligatoria", ["ReO_Car_ID"], :name => "ReC_Car_ID"
  add_index "regular_obligatoria", ["ReO_Cur_ID"], :name => "ReC_Cur_ID"
  add_index "regular_obligatoria", ["ReO_Fac_ID"], :name => "ReC_Fac_ID"
  add_index "regular_obligatoria", ["ReO_Mat_ID"], :name => "ReO_Mat_ID"
  add_index "regular_obligatoria", ["ReO_Pla_ID"], :name => "ReC_Pla_ID"

  create_table "regular_total", :id => false, :force => true do |t|
    t.integer "ReT_Fac_ID",    :limit => 2, :default => 0,   :null => false
    t.integer "ReT_Pla_ID",    :limit => 2, :default => 0,   :null => false
    t.integer "ReT_Car_ID",    :limit => 2, :default => 0,   :null => false
    t.integer "ReT_Cur_ID",    :limit => 2, :default => 0,   :null => false
    t.integer "ReT_Mat_Total", :limit => 2, :default => 0,   :null => false
    t.float   "ReT_Creditos",               :default => 0.0, :null => false
  end

  add_index "regular_total", ["ReT_Car_ID"], :name => "Car_ID"
  add_index "regular_total", ["ReT_Cur_ID"], :name => "Cur_ID"
  add_index "regular_total", ["ReT_Fac_ID"], :name => "ReT_Fac_ID"
  add_index "regular_total", ["ReT_Pla_ID"], :name => "Pla_ID"

  create_table "regularidad", :id => false, :force => true do |t|
    t.integer "IDDocumento",                   :default => 0,     :null => false
    t.integer "IDTipoDoc",       :limit => 2,  :default => 0,     :null => false
    t.integer "IDLectivo",       :limit => 2,  :default => 0,     :null => false
    t.integer "IDFacultad",      :limit => 2,  :default => 0,     :null => false
    t.integer "IDPlan",          :limit => 2,  :default => 0,     :null => false
    t.string  "IDMateria",       :limit => 10, :default => "",    :null => false
    t.date    "fecha"
    t.boolean "Reg_Externa",                   :default => false, :null => false
    t.string  "Reg_Observ",      :limit => 50, :default => "",    :null => false
    t.boolean "Reg_Impresa",                   :default => false, :null => false
    t.date    "Reg_Vencimiento"
  end

  add_index "regularidad", ["IDFacultad"], :name => "IDFacultad"
  add_index "regularidad", ["IDLectivo"], :name => "IDLectivo"
  add_index "regularidad", ["IDMateria"], :name => "IDMateria"
  add_index "regularidad", ["IDPlan"], :name => "IDPlan"
  add_index "regularidad", ["IDTipoDoc"], :name => "IDTipoDoc"
  add_index "regularidad", ["fecha"], :name => "fecha"

  create_table "req_ingreso", :id => false, :force => true do |t|
    t.integer "RIn_Fac_ID",    :limit => 2,  :default => 0,     :null => false
    t.integer "RIn_ID",                      :default => 0,     :null => false
    t.string  "RIn_Nombre",    :limit => 40, :default => "",    :null => false
    t.boolean "RIn_Requerido",               :default => false, :null => false
    t.string  "RIn_Iniciales", :limit => 5
  end

  add_index "req_ingreso", ["RIn_Fac_ID"], :name => "RIn_FacID"
  add_index "req_ingreso", ["RIn_ID"], :name => "RIn_ID"

  create_table "requests", :force => true do |t|
    t.integer  "aluleg_id",                    :null => false
    t.integer  "count",      :default => 0,    :null => false
    t.datetime "last_reset",                   :null => false
    t.integer  "max",        :default => 1000, :null => false
    t.integer  "interval",   :default => 3600, :null => false
  end

  create_table "secundario", :id => false, :force => true do |t|
    t.integer "Sec_Fac_ID",     :limit => 2, :default => 1,     :null => false
    t.integer "IDDocumento",                 :default => 0,     :null => false
    t.integer "IDTipoDoc",      :limit => 2, :default => 0,     :null => false
    t.integer "IDColegio",      :limit => 2, :default => 0
    t.integer "IDTituSec",      :limit => 2, :default => 0
    t.date    "fecha"
    t.boolean "Sec_Provisorio",              :default => false, :null => false
    t.float   "Sec_Promedio",   :limit => 4
    t.date    "Sec_Egreso"
    t.date    "Sec_Revalida"
  end

  add_index "secundario", ["IDColegio"], :name => "IDColegio"
  add_index "secundario", ["IDTituSec"], :name => "IDTituSec"

  create_table "setup", :primary_key => "Set_Fac_ID", :force => true do |t|
    t.integer "Set_Lec_ID",            :limit => 2,                                 :default => 0
    t.boolean "Set_Habilita_Letra",                                                 :default => false
    t.string  "Set_Drive_Connection",  :limit => 50
    t.integer "Set_Renglones_Acta",    :limit => 2,                                 :default => 20
    t.integer "Set_Dias_Inscripcion",  :limit => 2
    t.integer "Set_Borra_Inscripcion", :limit => 2,                                 :default => 2,          :null => false
    t.decimal "Set_Deuda_Permitida",                 :precision => 24, :scale => 4, :default => 0.0
    t.boolean "Set_Doble_Turno",                                                    :default => false
    t.integer "Set_Aplazos",           :limit => 2,                                 :default => 0
    t.integer "Set_Lec_ID_PAVN",       :limit => 2,                                 :default => 0
    t.integer "Set_Lla_ID_PAVN",       :limit => 2,                                 :default => 0
    t.boolean "Set_Verif_Reg_PAVN",                                                 :default => false
    t.boolean "Set_Verif_Tes_PAVN",                                                 :default => false
    t.integer "Set_Lec_ID_AuIn",       :limit => 2
    t.integer "Set_MAE_ID",                                                         :default => 0
    t.integer "Set_Materias",          :limit => 2,                                 :default => 2
    t.string  "Set_Profesores",        :limit => 15,                                :default => "tres (3)"
    t.boolean "Set_ManCondic",                                                      :default => false,      :null => false
    t.boolean "Set_Cursada",                                                        :default => false,      :null => false
    t.integer "Set_Est_ID_Castigo",    :limit => 2,                                 :default => 3,          :null => false
    t.date    "Set_FecEqv"
    t.boolean "Set_EqvApl",                                                         :default => false,      :null => false
    t.boolean "Set_Act_AuIn",                                                       :default => false,      :null => false
    t.boolean "Set_Aplica_Castigo",                                                 :default => false,      :null => false
    t.boolean "Set_Cero_Hora",                                                      :default => false,      :null => false
    t.boolean "Set_PoneFolio",                                                      :default => false,      :null => false
  end

  add_index "setup", ["Set_Fac_ID"], :name => "Set_Fac_ID"
  add_index "setup", ["Set_Lec_ID"], :name => "Set_Lec_ID"

  create_table "sismodulo", :primary_key => "SMo_ID", :force => true do |t|
    t.string "SMo_Nombre", :limit => 50, :default => "", :null => false
  end

  create_table "situacion", :primary_key => "Sit_ID", :force => true do |t|
    t.string "Sit_Nombre", :limit => 30, :default => "", :null => false
  end

  create_table "tablas", :primary_key => "Tab_ID", :force => true do |t|
    t.string "Tab_Nombre", :limit => 30
    t.string "Tab_Per_ID", :limit => 30
    t.string "Tab_Doc_ID", :limit => 30
  end

  add_index "tablas", ["Tab_Nombre", "Tab_Per_ID"], :name => "Tab_Nombre", :unique => true

  create_table "tarea", :id => false, :force => true do |t|
    t.integer "Form",    :limit => 2,  :default => 0,  :null => false
    t.integer "IDTarea", :limit => 2,  :default => 0,  :null => false
    t.string  "nombre",  :limit => 80, :default => "", :null => false
  end

  add_index "tarea", ["Form"], :name => "Form"
  add_index "tarea", ["IDTarea"], :name => "IDTarea"
  add_index "tarea", ["nombre"], :name => "nombre"

  create_table "terminal", :primary_key => "Ter_ID", :force => true do |t|
    t.timestamp "Ter_TimeStamp",               :null => false
    t.string    "Ter_Usuario",   :limit => 50
  end

  add_index "terminal", ["Ter_ID"], :name => "Ter_ID"

  create_table "tesdiferencia", :id => false, :force => true do |t|
    t.integer  "TDi_Fac_ID",    :limit => 2,  :default => 0, :null => false
    t.integer  "TDi_Per_ID",                  :default => 0, :null => false
    t.string   "TDi_Nombre",    :limit => 60
    t.datetime "TDi_TimeStamp"
  end

  add_index "tesdiferencia", ["TDi_Fac_ID"], :name => "TDi_Fac_ID"
  add_index "tesdiferencia", ["TDi_Per_ID"], :name => "TDi_Per_ID"

  create_table "tesestado", :id => false, :force => true do |t|
    t.integer "Tes_Fac_ID",        :limit => 2,                                  :default => 0,     :null => false
    t.integer "Tes_Per_ID",                                                      :default => 0,     :null => false
    t.integer "Tes_Doc_ID",        :limit => 2,                                  :default => 0,     :null => false
    t.decimal "Tes_Deuda",                        :precision => 20, :scale => 4, :default => 0.0
    t.boolean "Tes_Manual",                                                      :default => false
    t.boolean "Tes_Importado",                                                   :default => false
    t.string  "Tes_Observaciones", :limit => 100
    t.date    "Tes_Fecha"
  end

  add_index "tesestado", ["Tes_Doc_ID"], :name => "Tes_Doc_ID"
  add_index "tesestado", ["Tes_Fac_ID"], :name => "Tes_Fac_ID"
  add_index "tesestado", ["Tes_Per_ID"], :name => "Tes_Per_ID"

  create_table "tesestadoh", :id => false, :force => true do |t|
    t.integer  "Tes_Fac_ID",        :limit => 2,                                  :default => 0,     :null => false
    t.integer  "Tes_Per_ID",                                                      :default => 0,     :null => false
    t.integer  "Tes_Doc_ID",        :limit => 2,                                  :default => 0,     :null => false
    t.decimal  "Tes_Deuda",                        :precision => 20, :scale => 4, :default => 0.0
    t.boolean  "Tes_Manual",                                                      :default => false
    t.boolean  "Tes_Importado",                                                   :default => false
    t.string   "Tes_Observaciones", :limit => 100
    t.datetime "Tes_Fecha",                                                                          :null => false
  end

  add_index "tesestadoh", ["Tes_Doc_ID"], :name => "Tes_Doc_ID"
  add_index "tesestadoh", ["Tes_Fac_ID"], :name => "Tes_Fac_ID"
  add_index "tesestadoh", ["Tes_Per_ID"], :name => "Tes_Per_ID"

  create_table "tipoproduccion", :primary_key => "TPr_ID", :force => true do |t|
    t.string "TPr_Nombre", :limit => 150, :default => "", :null => false
  end

  create_table "tipotrayectoria", :primary_key => "TTr_ID", :force => true do |t|
    t.string "TTr_Nombre", :limit => 100, :default => "", :null => false
  end

  create_table "titentrega", :id => false, :force => true do |t|
    t.integer "IDDocumento",                       :default => 0, :null => false
    t.integer "IDTipoDoc",          :limit => 2,   :default => 0, :null => false
    t.integer "IDFacultad",         :limit => 2,   :default => 0, :null => false
    t.integer "IDPlan",             :limit => 2,   :default => 0, :null => false
    t.integer "IDCarrera",          :limit => 2,   :default => 0, :null => false
    t.date    "inicio"
    t.date    "entrega"
    t.integer "folio",                             :default => 0
    t.integer "libro",              :limit => 2,   :default => 0
    t.string  "Tit_Ministerio",     :limit => 100
    t.string  "Tit_Formula",        :limit => 100
    t.string  "Tit_Titulo_Grado"
    t.string  "Tit_Titulo_Trabajo", :limit => 150
    t.integer "Tit_Per_ID_Asesor",                 :default => 0
    t.integer "Tit_Doc_ID_Asesor",  :limit => 2,   :default => 0
    t.date    "Tit_Fecha_Ultima"
    t.string  "Tit_Mat_ID_Ultima",  :limit => 10
    t.string  "Tit_Libro_Ultima",   :limit => 5
    t.integer "Tit_Folio_Ultima",                  :default => 0
    t.integer "Tit_Geo_ID",         :limit => 2,   :default => 1, :null => false
  end

  add_index "titentrega", ["IDCarrera"], :name => "IDCarrera"
  add_index "titentrega", ["IDDocumento"], :name => "IDDocumento"
  add_index "titentrega", ["IDFacultad"], :name => "IDFacultad"
  add_index "titentrega", ["IDPlan"], :name => "IDPlan"
  add_index "titentrega", ["IDTipoDoc"], :name => "IDTipoDoc"
  add_index "titentrega", ["Tit_Doc_ID_Asesor"], :name => "Tit_Doc_ID_Asesor"
  add_index "titentrega", ["Tit_Per_ID_Asesor"], :name => "Tit_Per_ID_Asesor"
  add_index "titentrega", ["entrega"], :name => "entrega"
  add_index "titentrega", ["inicio"], :name => "inicio"

  create_table "titprofesor", :id => false, :force => true do |t|
    t.integer "IDDocumento",               :default => 0, :null => false
    t.integer "IDTipoDoc",   :limit => 2,  :default => 0, :null => false
    t.string  "Titulo",      :limit => 15
  end

  add_index "titprofesor", ["IDDocumento"], :name => "IDDocumento"
  add_index "titprofesor", ["IDTipoDoc"], :name => "IDTipoDoc"

  create_table "titulo", :id => false, :force => true do |t|
    t.integer "Tit_TTi_ID", :limit => 2, :default => 0,  :null => false
    t.integer "Tit_ID",                  :default => 0,  :null => false
    t.string  "Tit_Nombre",              :default => "", :null => false
  end

  create_table "titulopersona", :id => false, :force => true do |t|
    t.integer "TiP_Per_ID",                     :default => 0,     :null => false
    t.integer "TiP_Doc_ID",        :limit => 2, :default => 0,     :null => false
    t.integer "TiP_TTi_ID",        :limit => 2, :default => 0,     :null => false
    t.integer "TiP_ID",            :limit => 2, :default => 0,     :null => false
    t.date    "TiP_Fecha"
    t.date    "TiP_Egreso"
    t.date    "TiP_Revalida"
    t.boolean "TiP_FechaExacta",                :default => false, :null => false
    t.integer "TiP_Anho",          :limit => 2, :default => 0,     :null => false
    t.integer "TiP_Tit_ID",                     :default => 0,     :null => false
    t.integer "TiP_Ins_ID",                     :default => 0,     :null => false
    t.string  "TiP_Observaciones"
    t.boolean "TiP_Provisorio",                 :default => false, :null => false
    t.float   "TiP_Promedio",      :limit => 4
    t.boolean "TiP_Default",                    :default => false
  end

  create_table "titulotipo", :primary_key => "TTi_ID", :force => true do |t|
    t.string "TTi_Nombre", :limit => 30, :default => "", :null => false
  end

  create_table "titusec", :id => false, :force => true do |t|
    t.integer "TSe_Fac_ID", :limit => 2, :default => 1, :null => false
    t.integer "IDTituSec",  :limit => 2, :default => 0, :null => false
    t.string  "nombre"
  end

  create_table "top", :id => false, :force => true do |t|
    t.integer "Top_Ter_ID",                :default => 0, :null => false
    t.integer "Top_Fac_ID",   :limit => 2, :default => 0, :null => false
    t.integer "Top_Pla_ID",   :limit => 2, :default => 0, :null => false
    t.integer "Top_Per_ID",                :default => 0, :null => false
    t.integer "Top_Doc_ID",   :limit => 2, :default => 0, :null => false
    t.integer "Top_Cantidad", :limit => 2
  end

  add_index "top", ["Top_Cantidad"], :name => "top_cantidad"
  add_index "top", ["Top_Doc_ID"], :name => "top_doc_id"
  add_index "top", ["Top_Fac_ID"], :name => "top_fac_id"
  add_index "top", ["Top_Per_ID"], :name => "top_per_id"
  add_index "top", ["Top_Ter_ID"], :name => "top_ter_id"

  create_table "trayectoria", :id => false, :force => true do |t|
    t.integer "Tra_Per_ID",              :default => 0, :null => false
    t.integer "Tra_Doc_ID", :limit => 2, :default => 0, :null => false
    t.integer "Tra_TTr_ID", :limit => 2, :default => 0, :null => false
    t.text    "Tra_Texto",                              :null => false
  end

  create_table "turno", :primary_key => "Tur_ID", :force => true do |t|
    t.string "Tur_Nombre", :limit => 20, :default => "", :null => false
  end

  create_table "universidad", :primary_key => "Uni_ID", :force => true do |t|
    t.string  "Uni_Nombre",         :limit => 150
    t.integer "Uni_IDNacionalidad", :limit => 2,   :default => 0
  end

  add_index "universidad", ["Uni_ID"], :name => "IDUniversidad"

  create_table "usuario", :id => false, :force => true do |t|
    t.integer "IDFacultad",   :limit => 2,                                  :default => 0,     :null => false
    t.string  "IDUsuario",    :limit => 50,                                 :default => "",    :null => false
    t.decimal "clav1",                       :precision => 20, :scale => 0, :default => 0
    t.decimal "clav2",                       :precision => 20, :scale => 0, :default => 0
    t.string  "nombre",       :limit => 40,                                 :default => "",    :null => false
    t.integer "Usu_Geo_ID",   :limit => 2,                                  :default => 0
    t.boolean "Usu_Bloquear",                                               :default => false, :null => false
    t.string  "Usu_eMail",    :limit => 100
  end

  add_index "usuario", ["IDFacultad"], :name => "IDFacultad"
  add_index "usuario", ["IDUsuario"], :name => "IDUsuario"
  add_index "usuario", ["Usu_Geo_ID"], :name => "Usu_Geo_ID"

  create_table "version", :id => false, :force => true do |t|
    t.integer "IDVersion", :limit => 2, :default => 0, :null => false
    t.integer "Punto",     :limit => 2, :default => 0, :null => false
  end

end
