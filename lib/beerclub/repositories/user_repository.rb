class UserRepository < Hanami::Repository
  def auth!(auth_hash)
    github_id = auth_hash.fetch(:uid)
    info      = auth_hash.fetch(:info)

    attrs = {
      name:      info.fetch(:name),
      nickname:  info.fetch(:nickname),
      image_url: info.fetch(:image)
    }

    if user = find_by_github_id(github_id)
      update(user.id, attrs)
    else
      create(User.new(attrs.merge(github_id: github_id)))
    end
  end

  def find_by_github_id(id)
    users.where(github_id: id).first
  end
end
