# Variables
FORGE = forge
TEST_CONTRACTS = test
BUILD_DIR = out
RPC_URL = http://127.0.0.1:8545  # Added 'http://' for a proper URL format
PRIVATE_KEY = 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80  # Removed quotes

# Targets
all: build

build:
	@echo "Building the project..."
	$(FORGE) build

clean:
	@echo "Cleaning build artifacts..."
	$(FORGE) clean

test:
	@echo "Running tests..."
	$(FORGE) test

snapshot:
	@echo "Taking a snapshot..."
	$(FORGE) snapshot

coverage:
	@echo "Generating coverage report..."
	$(FORGE) coverage

test-local:
	@echo "Running tests on local RPC..."
	$(FORGE) test --rpc-url $(RPC_URL)

deploy-local:
	@echo "Deploying local script..."
	$(FORGE) script script/Anvil.s.sol --rpc-url $(RPC_URL) --private-key $(PRIVATE_KEY) --broadcast
