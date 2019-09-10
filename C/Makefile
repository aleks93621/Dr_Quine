CV=\033[32m
CJ=\033[033m
CNOR=\033[0m
CR=\x1b[31m

SRC_COLLEEN=./Colleen/Colleen.c
SRC_GRACE=./Grace/Grace.c
SRC_SULLY=./Sully/Sully.c

OBJ_COLLEEN=$(SRC_COLLEEN:.c=.o)
OBJ_GRACE=$(SRC_GRACE:.c=.o)
OBJ_SULLY=$(SRC_SULLY:.c=.o)

CC=clang
FLAG=-Wall -Werror -Wall

all: Colleen Grace Sully

Colleen: $(OBJ_COLLEEN)
	@$(CC) $(FLAG) $(OBJ_COLLEEN) -o ./Colleen/Colleen
	@echo "$(CV)------------ Colleen ...$(CNOR)"

Grace: $(OBJ_GRACE)
	@$(CC) $(FLAG) $(OBJ_GRACE) -o ./Grace/Grace
	@echo "$(CV)------------ Grace ...$(CNOR)"

Sully: $(OBJ_SULLY)
	@$(CC) $(FLAG) $(OBJ_SULLY) -o ./Sully/Sully
	@echo "$(CV)------------ Sully ...$(CNOR)"

%.o: %.c
	@clang $(FLAG) -o $@ -c $<
	@echo "$(CV)[DR_QUINE] : Compilation $<$(CNOR)";

clean:
	@rm -rf $(OBJ_SULLY) $(OBJ_GRACE) $(OBJ_COLLEEN)
	@echo "$(CR)[DR_QUINE] : Suppression des objets$(CNOR)";

fclean: clean
	@rm -rf ./Sully/Sully ./Colleen/Colleen ./Grace/Grace ./Sully/Sully_* ./Grace/Grace_kid.c
	@echo "$(CR)[DR_QUINE] : Suppression des fichiers supplementaires$(CNOR)";

re: fclean all

.PHONY: all clean fclean re