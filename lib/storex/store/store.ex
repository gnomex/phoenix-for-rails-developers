defmodule Storex.Store do
	alias Storex.Repo
	alias Storex.Store.Book

	def list_books() do
		Repo.all(Book)
	end

	def get_book(id) do
		# Enum.find(list_books(), fn(book) -> book.id == id end)
		Repo.get(Book, id)
	end
end