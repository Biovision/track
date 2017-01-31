module Track
  class Engine < ::Rails::Engine
    initializer  "track.load_track_methods" do
      ActiveSupport.on_load(:action_controller) do
        include Track::TrackMethods
      end
    end
  end
end
