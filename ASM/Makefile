NAME	:= Colleen Grace Sully
CC		:= clang

test_label = @printf "\033[38;2;40;177;249m---> Testing $(1)... <---\033[0m\n"

all: $(NAME)

clean:
	$(RM) $(NAME) Grace_kid.s Sully_*

test: $(NAME)
	$(call test_label, Colleen)
	./Colleen | diff - Colleen.s
	$(call test_label, Grace)
	./Grace
	diff Grace.s Grace_kid.s
	$(call test_label, Sully)
	./Sully
	diff Sully.s Sully_0.s; true
	diff Sully_3.s Sully_2.s; true

.PHONY: all clean test
