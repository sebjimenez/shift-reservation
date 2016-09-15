# Offsprings are dependent on users and are the ones that get assigned to shifts
# They can't be assigned themselves, and need the process to be done by the user
class OffspringsController < ApplicationController
  SCOPE = "activerecord.errors.controllers.offspring".freeze
  def show
  end

  def index
  end

  def new
    #@offspring = current_user.offsprings.build
  end

  def create
    if access_control?
      @offspring = offsprings.build(offsprings_params)
      unless @offspring.primary_first?
        flash[:warning] = "Sólo puede añadir a niños de 1º de Primaria"
        redirect_to static_pages_intructions_path
        return
      end
      save_offspring(@offspring)
      return unless validate_create_offspring? @offspring
    else
      flash[:alert] = I18n.t("admin_locked_create", scope: SCOPE)
    end
    redirect_to root_path
  end

  def destroy
    if access_control?
      offspring = Offspring.find_by_id(params[:id])
      offspring.destroy
      flash[:success] = I18n.t("offspring_deleted", scope: SCOPE)
    else
      flash[:alert] = I18n.t("admin_locked_destroy", scope: SCOPE)
    end
    redirect_to request.referer || root_url
  end

  private

  def offsprings_params
    params.require(:offspring).permit(:first_name, :last_name, :grade)
  end

  def save_offspring(off)
    if off.save
      flash[:success] = I18n.t("add_offspring_success", scope: SCOPE)
    else
      flash[:danger] = I18n.t("add_offspring_failure", scope: SCOPE)
    end
  end

  def access_control?
    !ApplicationHelper.status_lock?
  end

  def validate_create_offspring?(off)
    unless off.primary_first?
      flash[:warning] = I18n.t("condition_primary_grade", scope: SCOPE)
      redirect_to static_pages_intructions_path
      return false
    end
    save_offspring(off)
    true
  end
end
