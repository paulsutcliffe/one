class AuspiciadoresController < InheritedResources::Base
  before_filter :authenticate_admin!

  def create
    create! { auspiciadores_path }
  end

  def update
    update! { auspiciadores_path }
  end

  def destroy
    destroy! { auspiciadores_path }
  end
end
