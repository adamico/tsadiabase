class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json
  respond_to :xls, only: :index

  # GET /patients
  # GET /patients.json
  def index
    @patients = Patient.order(:id)
    respond_with @patients
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
    respond_with @patient
  end

  # GET /patients/new
  def new
    @patient = Patient.new
    respond_with @patient
  end

  # GET /patients/1/edit
  def edit
    respond_with @patient
  end

  # POST /patients
  # POST /patients.json
  def create
    @patient = Patient.create(patient_params)
    flash[:notice] = "Fiche <a href='#{edit_patient_path(@patient.id)}'>#{@patient.id}</a> créée avec succès".html_safe if @patient.save
    if params[:_close]
      location = patients_path
    else
      location = new_patient_path
    end
    respond_with @patient, location: location
  end

  # PATCH/PUT /patients/1
  # PATCH/PUT /patients/1.json
  def update
    if params[:_close]
      location = patients_path
    else
      location = new_patient_path
    end
    @patient.update(patient_params)
    flash[:notice] = "Fiche <a href='#{edit_patient_path(@patient.id)}'>#{@patient.id}</a> mise à jour avec succès".html_safe if @patient.save
    respond_with @patient, location: location
  end

  # DELETE /patients/1
  # DELETE /patients/1.json
  def destroy
    @patient.destroy
    flash[:notice] = "Fiche détruite avec succès"
    respond_with @patient
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
      params.require(:patient).permit(:sexe, :age, :diabete, :diabete_duree, :imc, :imc, :poids, :poids, :tabac, :hta, :dysplipidemie, :aomi, :ips, :coronarien, :cerebro_vasculaire, :cv_fam, :retinopathie, :neuropathie, :creat, :clearance, :microalb, :proteinurie, :ttt_aa, :ttt_aa_quoi, :ttt_diabete, :hba1c, :hba1c, :depistage, :suivi, :autres, :tsaami, :tsaant, :intro_statine, :intro_aa, :intro_iec, :ttt_chir, :angiotdm, :surv_doppler, :surv_doppler_freq, resultats_attributes: [:libelle, :siege, :cote, :description, :id])
    end
end
