SRC = hw3

all: $(SRC).html

$(SRC).html: $(SRC).pmd
	pweave --format=md2html $(SRC).pmd

$(SRC).md: $(SRC).pmd
	pweave --format=pandoc $(SRC).pmd

clean:
	rm -f $(SRC).html $(SRC).md
	rm -rf figures
	rm -rf __pycache__