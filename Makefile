build:
	elm make Main.elm \
		model/board/*.elm \
		model/*.elm \
		view/*.elm \
		update/board/*.elm \
		update/*.elm
