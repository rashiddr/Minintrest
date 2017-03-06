namespace :node_task do
  desc "TODO"
  task create_topic_nodes: :environment do
    (1..20).each do |t|
      topic = Topic.create(name: "Topic #{t}", description: "sample description about topic #{t}", hit: Random.rand(150...900))
      p "Created topic:"
      p " Topic #{t} with description sample description about topic #{t} having hits #{topic.hit}"
      sleep(1)
    end
  end
end
