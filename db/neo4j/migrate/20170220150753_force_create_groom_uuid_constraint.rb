#
# ForceCreateGroomUuidConstraint Migration
#
# @author rashid
#
class ForceCreateGroomUuidConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :Groom, :uuid, force: true
  end

  def down
    drop_constraint :Groom, :uuid
  end
end
