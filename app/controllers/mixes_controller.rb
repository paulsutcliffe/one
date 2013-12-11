class MixesController < InheritedResources::Base
  before_filter :authenticate_admin!

  def create
    create! { mixes_path }
  end

  def update
    update! { mixes_path }
  end

  def destroy
    destroy! { mixes_path }
  end
end
