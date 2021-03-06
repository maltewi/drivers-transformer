module Transformer
    module ConfigurationExtension
        attr_predicate :transformer_enabled?, true

        def transformer_enabled=(value)
            if value
                Transformer::SyskitPlugin.enable
            end
            @transformer_enabled = value
        end

	def transformer_broadcaster_enabled?
	    transformer_enabled? && (@transformer_broadcaster_enabled != false)
	end

        def transformer_broadcaster_enabled=(value)
	    @transformer_broadcaster_enabled = value
        end
    end
end

