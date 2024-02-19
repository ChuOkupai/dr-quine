NAME := Colleen Grace Sully

test_label = @printf "\033[38;2;40;177;249m---> Testing $(1)... <---\033[0m\n"

all: $(NAME)

clean:
	$(RM) $(NAME) Grace_kid.c Sully_*

test: $(NAME)
	$(call test_label, Colleen)
	./Colleen | diff - Colleen.c
	$(call test_label, Grace)
	./Grace
	diff Grace.c Grace_kid.c
	$(call test_label, Sully)
	./Sully
	diff Sully.c Sully_0.c; true
	diff Sully_3.c Sully_2.c; true

.PHONY: all clean test
