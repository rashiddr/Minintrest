#
# Topic Model
#
# @author rashid
#
class Topic
  include Neo4j::ActiveNode
  property :name, type: String
  property :description, type: String
  property :hit, type: Integer
end
