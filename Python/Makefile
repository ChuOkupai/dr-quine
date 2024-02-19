NAME := Colleen.py Grace.py Sully.py

test_label = @printf "\033[38;2;40;177;249m---> Testing $(1)... <---\033[0m\n"

all: $(NAME)

clean:
	$(RM) Grace_kid.py Sully_*.py

test:
	$(call test_label, Colleen)
	python3 Colleen.py | diff - Colleen.py
	$(call test_label, Grace)
	python3 Grace.py
	diff Grace.py Grace_kid.py
	$(call test_label, Sully)
	python3 Sully.py
	diff Sully.py Sully_0.py; true
	diff Sully_3.py Sully_2.py; true

.PHONY: all clean test
