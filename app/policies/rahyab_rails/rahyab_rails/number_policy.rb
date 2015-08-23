module RahyabRails
  class RahyabRails::NumberPolicy < ApplicationPolicy
    class Scope < Scope
      def resolve
        scope
      end
    end
  end
end
