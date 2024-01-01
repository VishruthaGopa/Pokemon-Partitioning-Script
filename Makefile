# List the folders to delete
FOLDER_TO_DELETE := Bug Dark Dragon Electric Fairy Fighting Fire Flying Ghost Grass Ground Ice Normal Poison Psychic Rock Steel Water

# Define the cleanup target
clean:
	for folder in $(FOLDER_TO_DELETE); do \
		if [ -d "$$folder" ]; then \
			rm -r "$$folder"; \
			echo "Deleted folder: $$folder"; \
		else \
			echo "Folder '$$folder' not found"; \
		fi \
	done
