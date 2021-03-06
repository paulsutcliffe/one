class EventosController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index]

  def create
    create! { eventos_path }
  end

  def update
    update! { eventos_path }
  end

  def destroy
    destroy! { eventos_path }
  end
end
