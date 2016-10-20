# rubocop:disable Style/FileName
# frozen_string_literal: true

require 'sass'

module Sass
  module Script
    module Functions # :nodoc:
      # Let MS know that extra functionality is avalible
      def ms_gem_installed
        Sass::Script::Bool.new(true)
      end

      # rubocop:disable MethodLength
      # rubocop:disable Metrics/AbcSize
      # rubocop:disable Metrics/CyclomaticComplexity
      # rubocop:disable Metrics/PerceivedComplexity
      def ms_gem_func(value, bases, ratios)
        # Convert to native Ruby things
        rvalue = value.value.to_i

        bases = if bases.class == Sass::Script::Number
          [] << bases
        else
          bases.value.to_a
        end

        ratios = if ratios.class == Sass::Script::Number
           [] << ratios
         else
           ratios.value.to_a
         end

        # Convert items in arrays to floating point numbers
        rbases = []

        bases.each do |num|
          rbases << num.value.to_f
        end

        rratios = []

        ratios.each do |num|
          rratios << num.value.to_f
        end

        # Blank array for return
        r = [rbases[0]]

        # Loop through all possibilities
        # NOTE THIS IS NOT FULLY FUNCTIONAL YET
        # ONLY LOOPS THROUGH SOME/MOST OF THE POSSIBILITES
        rratios.each do |ratio|
          rbases.each do |base|
            # Seed list with an initial value
            r << base

            # Find values on a positive scale
            if rvalue >= 0
              # Find higher values on the scale
              i = 0

              while ((ratio**i) * base) >= (rbases[0])
                r << (ratio**i) * base
                i -= 1
              end

              # Find lower possible values on the scale
              i = 0

              while ((ratio**i) * base) <= ((ratio**(rvalue + 1)) * base)
                r << (ratio**i) * base
                i += 1
              end
            else
              # Find lower values on the scale
              i = 0

              while ((ratio**i) * base) <= (rbases[0])
                r << (ratio**i) * base
                i += 1
              end

              # Find higher possible values on the scale
              i = 0

              while ((ratio**i) * base) >= ((ratio**(rvalue - 1)) * base)
                r << (ratio**i) * base
                i -= 1
              end
            end
          end
        end

        # Sort and trim
        r.sort!
        r.uniq!

        if rvalue.negative?
          r = r.keep_if { |a| a <= rbases[0] }
          # Final value
          r = r[(rvalue - 1)]
        else
          r = r[rvalue]
        end

        Sass::Script::Number.new(r)
      end
    end
  end
end