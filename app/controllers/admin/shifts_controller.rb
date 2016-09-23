class Admin::ShiftsController < Admin::AdminIdentifiedController
  def show
    @shift = Shift.find_by_id(params[:id])
    if @shift.nil?
      redirect_to admin_rooms_path
    end
  end

  def new
    @room = Room.find_by_id(params[:room_id])
    @shift = @room.shifts.build
  end

  def create
    @room = Room.find_by_id(params[:room_id])
    @shift = @room.shifts.build(shifts_params)
    if @shift.save
      flash[:success] = (t "application.models.shift.shift_added").capitalize
      redirect_to admin_rooms_path
    else
      flash[:danger] = (t "application.models.shift.shift_not_added").capitalize
      render 'new'
    end
  end

  def edit
    @shift = Shift.find_by_id(params[:id])
    @room = @shift.room
  end

  def update
    @shift = Shift.find(params[:id])
    @room = @shift.room
    if @shift.update_attributes(shifts_params)
      flash[:success] = (t "application.models.shift.shift_updated").capitalize
      redirect_to admin_shift_path(@shift)
    else
      flash[:danger] = (t "application.models.shift.shift_not_updated").capitalize
      render 'edit'
    end
  end

  def destroy
    @shift = Shift.find_by_id(params["id"])
    if @shift.destroy
      flash[:success] = (t "application.models.shift.shift_deleted").capitalize
    else
      flash[:danger] = (t "application.models.shift.shift_delete_error").capitalize
    end
    redirect_to admin_rooms_path
  end

  def destroy_all
    Shift.destroy_all
    redirect_to admin_dashboard_path
  end

  private

  def shifts_params
    params.require(:shift).permit(:day_of_week, :start_time, :end_time, :sites_reserved)
  end
end
