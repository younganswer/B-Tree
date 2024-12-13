SHELL		= /bin/bash
TARGET		= b-tree

SRCS_DIR	= src
OBJS_DIR	= obj

SRCS		:= main.cpp __tree
SRCS		:= ${addprefix ${SRCS_DIR}/, ${SRCS}}
OBJS		:= main.o __tree.o
OBJS		:= ${addprefix ${OBJS_DIR}/, ${OBJS}}

CXX			= clang++
CXXFLAGS	= -Wall -Wextra -Werror -O3 -x c++ -std=c++20
LDFLAGS		= 
RM			= rm -f

ifdef SANITIZE
	CXXFLAGS += -g
	LDFLAGS += -fsanitize=address
endif

all: ${TARGET}

${TARGET}: ${OBJS}
	@${CXX} ${LDFLAGS} -g -o $@ $^

${OBJS_DIR}/main.o: ${SRCS_DIR}/main.cpp | ${OBJS_DIR}
	@${CXX} ${CXXFLAGS} -c $< -o $@

${OBJS_DIR}/__tree.o: ${SRCS_DIR}/__tree | ${OBJS_DIR}
	@${CXX} ${CXXFLAGS} -c $< -o $@

${OBJS_DIR}:
	@mkdir -p ${OBJS_DIR}

clean:
	@${RM} -r ${OBJS_DIR}

fclean: clean
	@${RM} ${TARGET}

.PHONY: all clean fclean

.NOTPARALLEL: all clean fclean