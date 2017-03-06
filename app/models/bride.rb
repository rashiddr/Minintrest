#
# Bride node
#
# @author rashid
#
class Bride
  include Neo4j::ActiveNode
  property :user_id, type: Integer
end
