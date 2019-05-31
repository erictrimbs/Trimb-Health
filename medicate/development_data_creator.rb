class DevelopmentDataCreator
    include FactoryGirl::Syntax::MethodSource

    def self.run
        if Rails.env.development? || Rails.env.staging?
            new.run
        else
            raise StandardError, "Seeds can only be generated in staging or development"
        end
    end

    def run
    end
end