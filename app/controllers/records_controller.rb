class RecordsController < ApplicationController
  def index
    @records = Record.all
  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    @record.user = current_user

    @symptoms = params[:record][:symptom][:symptoms][1..]

    @symptoms.each do |item|
      @record_symptom = RecordSymptom.new
      symptom = Symptom.find(item)
      @record_symptom.symptom = symptom
      @record_symptom.record = @record
      @record_symptom.save
    end

    if @record.save
      redirect_to records_path
    else
      render :new
    end
  end

  def show
    @record = Record.find(params[:id])
  end

  def edit
    @record = Record.find(params[:id])
  end

  def update
    @record = Record.find(params[:id])
    @record.update(record_params)
    redirect_to record_path(@record)
  end

  def destroy
    @record = Record.find(params[:id])
    @record.destroy
    redirect_to records_path, status: :see_other
  end

  private

  def record_params
    params.require(:record).permit(:disease, :notes, :medication, :date, :user_id, :photo)
  end

end
