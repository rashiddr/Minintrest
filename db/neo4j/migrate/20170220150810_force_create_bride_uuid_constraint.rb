#
# ForceCreateBrideUuidConstraint Migration
#
# @author rashid
#
class ForceCreateBrideUuidConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :Bride, :uuid, force: true
  end

  def down
    drop_constraint :Bride, :uuid
  end
end
