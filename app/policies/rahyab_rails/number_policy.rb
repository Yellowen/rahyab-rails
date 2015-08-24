module RahyabRails
  class NumberPolicy < ApplicationPolicy
    class Scope < Scope
      def resolve
        scope
      end
    end
  end
end
