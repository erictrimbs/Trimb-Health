if Rails.env.development? || Rails.env.staging?
    require "./lib/development_data_creator"

    namespace :dev do
        desc "Seed database with example data"
        task bootstrap: :environment do
            DevelopmentDataCreator.run
        end
    end
end