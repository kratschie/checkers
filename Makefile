CXXFLAGS = -g -Wall -std=c++98 -Os

TARGETS = mcp example_player rebecca_kratsch

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

r run : mcp example_player rebecca_kratsch						
	./mcp -d -r0 -R0 -s10 -S11 rebecca_kratsch example_player

f fight : mcp rebecca_kratsch	
	./mcp -t 60 -T 61 -m 1024 -M 1024 rebecca_kratsch rebecca_kratsch

benjamin1 : mcp rebecca_kratsch
	./mcp -t 60 -T 61 -m 1024 -M 1024 -i "B:--------B----w------------------" rebecca_kratsch rebecca_kratsch

benjamin2 : mcp rebecca_kratsch
	./mcp -t 60 -T 61 -m 1024 -M 1024 -i "W:------------------------bb--W---" rebecca_kratsch rebecca_kratsch

benjamin3 : mcp rebecca_kratsch
	./mcp -t 60 -T 61 -m 1024 -M 1024 -i "B:-B---ww------ww-----------------" rebecca_kratsch rebecca_kratsch

cl clean :
	rm -f $(TARGETS) *.o

mcp : mcp.o logic.o
	$(CXX) -o $@ $^

