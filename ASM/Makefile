CV=\033[32m
CJ=\033[033m
CNOR=\033[0m
CR=\x1b[31m

SRC_COLLEEN=./Colleen/Colleen.s
SRC_GRACE=./Grace/Grace.s
SRC_SULLY=./Sully/Sully.s

OBJ_COLLEEN=$(SRC_COLLEEN:.s=.o)
OBJ_GRACE=$(SRC_GRACE:.s=.o)
OBJ_SULLY=$(SRC_SULLY:.s=.o)

CC=nasm -f macho64
LD_FLAG=-macosx_version_min 10.8 -lSystem

all: Colleen Grace Sully

Colleen: $(OBJ_COLLEEN)
	@ld $(OBJ_COLLEEN) -o ./Colleen/Colleen $(LD_FLAG)
	@echo "$(CV)------------ Colleen ...$(CNOR)"

Grace: $(OBJ_GRACE)
	@ld $(OBJ_GRACE) -o ./Grace/Grace $(LD_FLAG)
	@echo "$(CV)------------ Grace ...$(CNOR)"

Sully: $(OBJ_SULLY)
	@ld $(OBJ_SULLY) -o ./Sully/Sully $(LD_FLAG)
	@echo "$(CV)------------ Sully ...$(CNOR)"

%.o: %.s
	@$(CC) $<
	@echo "$(CV)[DR_QUINE] : Compilation $<$(CNOR)"

clean:
	@rm -rf $(OBJ_SULLY) $(OBJ_GRACE) $(OBJ_COLLEEN)
	@echo "$(CR)[DR_QUINE] : Suppression des objets$(CNOR)"

fclean: clean
	@rm -rf ./Sully/Sully ./Colleen/Colleen ./Grace/Grace ./Sully/Sully_* ./Grace/Grace_kid.s
	@echo "$(CR)[DR_QUINE] : Suppression des fichiers supplementaires$(CNOR)"

re: fclean all

.PHONY: all clean fclean re