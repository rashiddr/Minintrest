#
# Groom node
#
# @author rashid
#
class Groom
  include Neo4j::ActiveNode
  property :user_id, type: Integer
end
