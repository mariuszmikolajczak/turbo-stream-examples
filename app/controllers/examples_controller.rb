# frozen_string_literal: true

class ExamplesController < ApplicationController
  def index
  end

  def update
    respond_to do |format|
      format.html { redirect_to root_path }
      format.turbo_stream { render turbo_stream: turbo_stream.update(:target_tag, plain: "updated") }
    end
  end
end
