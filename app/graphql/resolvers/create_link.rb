class Resolvers::CreateLink < GraphQL::Function
  # arguments passed as "args"
  argument :decription, !types.String
  argument :url, !types.String

  # return type from the mutation
  type Types::LinkType

  # the mutation method
  # _obj - is parent object, which in this case is nil
  # args - are the arguments passed
  # _ctx - is the GraphQL context (which would be discussed later)
  def call(_obj, args, _ctx)
    Link.create!(
      decription: args[:decription],
      url: args[:url],
    )
  end
end