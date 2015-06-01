class VersionsController < ApplicationController
  def create
    v1 = Version.find(params["1"])
    v2 = Version.find(params["2"])
    session[:diffs] = (v2.corpus.split - v1.corpus.split).join(" ")
    redirect_to :back
  end

  def show
    @version = Version.find(params[:id])
  end

  def index
    @diff = session[:diffs]
    @wikipage = Wikipage.find(params[:wikipage_id])
    @versions = @wikipage.versions
  end
end
