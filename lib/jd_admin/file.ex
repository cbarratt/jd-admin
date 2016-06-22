defmodule JdAdmin.File do
  use Arc.Definition
  use Arc.Ecto.Definition

  @versions [:original]
  @extension_whitelist ~w(.jpg .jpeg .gif .png)

  def acl(:thumb, _), do: :public_read

  def validate({file, _}) do
    file_extension = file.file_name |> Path.extname |> String.downcase
    Enum.member?(@extension_whitelist, file_extension)
  end

  def filename(version, _) do
    version
  end

  def storage_dir(_, {file, file}) do
    "uploads/files/#{file.id}"
  end
end
