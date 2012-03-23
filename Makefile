CXXFLAGS = -g -Wall -std=c++98 -Os

TARGETS = mcp example_player my_player

.PHONY: all help demo run clean dist

a all : $(TARGETS)

h help : mcp
	@echo "The following make commands are available:"
	@echo "  $(MAKE) all   - builds everything"
	@echo "  $(MAKE) demo  - runs two of the example players against each other"
	@echo "  $(MAKE) run   - runs your own player against the example player"
	@echo "  $(MAKE) fight - runs two of your own player with resource limits"
	@echo "  $(MAKE) clean - removes all created files"
	@echo ""
	@echo "The following mcp options are available:"
	@./mcp -?

d demo : mcp example_player
	./mcp -d example_player example_player

r run : mcp example_player my_player
	./mcp -d -r0 -R0 -s10 -S11 example_player my_player

f fight : mcp my_player
	./mcp -t 60 -T 61 -m 1024 -M 1024 my_player my_player

cl clean :
	rm -f $(TARGETS) *.o

mcp : mcp.o logic.o
	$(CXX) -o $@ $^

